# Quick Reference: Local Testing Commands

## Essential Commands

```bash
# === Navigate to the tap directory ===
cd /Users/moonshot/repos/starsheep/homebrew-tap

# === Run the automated test ===
./test-local.sh full      # Full test with installation and verification
./test-local.sh quick     # Quick syntax check only
./test-local.sh install   # Install only
./test-local.sh verify    # Verify existing installation

# === Manual testing commands ===

# Check formula syntax
brew ruby -c Formula/starsheep.rb

# Install from local formula
brew install --build-from-source --formula Formula/starsheep.rb

# Install with debug output
brew install --verbose --debug --build-from-source Formula/starsheep.rb

# Verify installation
which starsheep
starsheep --help
starsheep init zsh

# Test the formula
brew test Formula/starsheep.rb

# Uninstall
brew uninstall --ignore-dependencies starsheep

# View installation details
brew list starsheep
brew info starsheep
```

## Debug Commands

```bash
# Show all logs for starsheep
find ~/Library/Logs/Homebrew/starsheep -name "*.log" -type f

# Watch build in real-time
brew install --verbose --debug Formula/starsheep.rb

# Check dependencies
brew deps Formula/starsheep.rb

# Check conflicts (if any)
brew uses --recursive Formula/starsheep.rb

# Show installation plan
brew install --dry-run --build-from-source Formula/starsheep.rb
```

## Common Issues & Fixes

```bash
# If formula has errors
brew ruby -c Formula/starsheep.rb  # Check syntax
brew uninstall starsheep           # Clean uninstall
brew cleanup                       # Clean cache

# If build fails
rm -rf zig-cache/               # Clean zig cache
zig build --release=safe        # Test build directly

# If dependencies missing
brew install zig libgit2        # Install manually

# If tests fail
starsheep --help                # Test manually
brew test --verbose Formula/starsheep.rb  # Verbose test
```

## Workflow for Development

```bash
# 1. Make changes to formula
nvim Formula/starsheep.rb

# 2. Quick syntax check
./test-local.sh quick

# 3. Full test (if syntax passes)
./test-local.sh full

# 4. When ready to publish
cd /Users/moonshot/repos/starsheep
# Commit and push changes
git add homebrew-tap/
git commit -m "Update Homebrew formula"
```

## Creating a Tap Repository

```bash
# If you want to move the tap to a separate repo
git clone git@github.com:Crescent617/homebrew-tap.git
cd homebrew-tap
git add .
git commit -m "Initial commit"
git push -u origin main

# Users can then install with:
brew tap Crescent617/homebrew-tap
brew install starsheep
```
