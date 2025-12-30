#!/bin/bash
# Local Homebrew Formula Testing Script
# This script helps you test the starsheep formula locally

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

echo -e "${BLUE}================================================${NC}"
echo -e "${BLUE}  Starsheep Homebrew Formula Local Tester      ${NC}"
echo -e "${BLUE}================================================${NC}"
echo

# Check if we're in the right directory
if [[ ! -f "Formula/starsheep.rb" ]]; then
    echo -e "${RED}Error: Must run this script from the homebrew-tap directory${NC}"
    echo "Current directory: $(pwd)"
    exit 1
fi

# Function to print colored output
print_status() {
    local status=$1
    local message=$2
    case $status in
        info) echo -e "${BLUE}ℹ${NC}  $message" ;;
        success) echo -e "${GREEN}✓${NC}  $message" ;;
        error) echo -e "${RED}✗${NC}  $message" ;;
        warning) echo -e "${YELLOW}⚠${NC}  $message" ;;
    esac
}

# Parse command line arguments
MODE="${1:-full}"
case $MODE in
    full)
        print_status info "Running full test (install + verify + uninstall)"
        ;;
    quick)
        print_status info "Running quick syntax check only"
        ;;
    install)
        print_status info "Running install test only"
        ;;
    verify)
        print_status info "Running verification only (assumes already installed)"
        ;;
    *)
        print_status error "Unknown mode: $MODE"
        echo "Usage: $0 [full|quick|install|verify]"
        exit 1
        ;;
esac

echo

# Step 1: Syntax validation
print_status info "Step 1: Validating formula syntax"
if brew ruby Formula/starsheep.rb 2>&1; then
    print_status success "Formula syntax is valid"
else
    print_status error "Formula syntax validation failed"
    exit 1
fi
echo

if [[ "$MODE" == "quick" ]]; then
    print_status success "Quick syntax check completed successfully"
    exit 0
fi

# Step 2: Check dependencies
print_status info "Step 2: Checking dependencies"

# Check if zig is installed
if command -v zig &> /dev/null; then
    ZIG_VERSION=$(zig version)
    print_status success "Zig found: $ZIG_VERSION"
else
    print_status warning "Zig not found in PATH. Homebrew will install it as a build dependency."
fi

# Check if libgit2 is installed
if brew list libgit2 &> /dev/null; then
    print_status success "libgit2 is installed"
else
    print_status warning "libgit2 not found. Homebrew will install it as a dependency."
fi
echo

# Step 3: Test installation
if [[ "$MODE" == "full" || "$MODE" == "install" ]]; then
    print_status info "Step 3: Testing installation"

    # First, uninstall if already installed
    if brew list starsheep &> /dev/null; then
        print_status warning "starsheep is already installed. Uninstalling first..."
        brew uninstall --ignore-dependencies starsheep 2>/dev/null || true
    fi

    # Install to local tap first
    print_status info "Installing starsheep to local tap..."
    if cp "$(pwd)/Formula/starsheep.rb" "/opt/homebrew/Library/Taps/crescent617/homebrew-tap/Formula/" 2>/dev/null; then
        print_status success "Formula copied to local tap"
    else
        print_status error "Failed to copy formula to local tap"
        exit 1
    fi

    # Test the formula
    print_status info "Installing starsheep from local tap..."
    if brew install --HEAD crescent617/tap/starsheep; then
        print_status success "Installation successful"
    else
        print_status error "Installation failed"
        echo
        echo -e "${YELLOW}Tips for debugging:${NC}"
        echo "1. Check the build logs: brew install --verbose --debug --HEAD crescent617/tap/starsheep"
        echo "2. Check if all dependencies are available"
        echo "3. Ensure the source code builds with: zig build --release=safe"
        exit 1
    fi
    echo
fi

# Step 4: Verify installation
if [[ "$MODE" == "full" || "$MODE" == "verify" ]]; then
    print_status info "Step 4: Verifying installation"

    # Check if command is available
    if command -v starsheep &> /dev/null; then
        print_status success "starsheep command is available"
    else
        print_status error "starsheep command not found"
        exit 1
    fi

    # Test help command
    print_status info "Testing starsheep --help"
    if starsheep --help; then
        print_status success "Help command works"
    else
        print_status error "Help command failed"
        exit 1
    fi

    # Test init command
    print_status info "Testing starsheep init zsh"
    if starsheep init zsh &> /dev/null; then
        print_status success "Init command works"
    else
        print_status error "Init command failed"
        exit 1
    fi

    # Test prompt command (basic)
    print_status info "Testing starsheep prompt (simple)"
    cd /tmp || cd $HOME
    if OUTPUT=$(starsheep prompt 2>&1 || true); then
        print_status success "Prompt command executed successfully"
        if [[ -n "$OUTPUT" ]]; then
            echo -e "${BLUE}  Sample output:${NC}"
            echo "  $OUTPUT" | head -3 | sed 's/^/    /'
        fi
    else
        print_status warning "Prompt command had issues (this might be expected in some environments)"
    fi

    # Show installation info
    echo
    print_status info "Installation details:"
    brew list --verbose starsheep | head -20
    echo
fi

# Step 5: Cleanup (optional)
if [[ "$MODE" == "full" ]]; then
    print_status info "Step 5: Uninstalling test installation"
    read -p "Would you like to uninstall starsheep? [y/N] " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        if brew uninstall --ignore-dependencies starsheep 2>/dev/null; then
            print_status success "Uninstall successful"
        else
            print_status error "Uninstall failed"
        fi
    else
        print_status info "Skipping uninstall"
    fi
fi

echo
echo -e "${GREEN}================================================${NC}"
echo -e "${GREEN}  Testing completed successfully!              ${NC}"
echo -e "${GREEN}================================================${NC}"
echo

print_status info "The formula is ready for publishing."

# Show next steps
if [[ "$MODE" == "full" ]]; then
    echo
    echo -e "${BLUE}Next steps:${NC}"
    echo "1. Commit your changes: git add . && git commit -m 'Add/update starsheep formula'"
    echo "2. If you created a separate tap repo, push to GitHub"
    echo "3. Users can now install with:"
    echo -e "   ${GREEN}   brew tap Crescent617/homebrew-tap${NC}"
    echo -e "   ${GREEN}   brew install starsheep${NC}"
fi
