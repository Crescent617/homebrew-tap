# Local Testing Guide for Starsheep Homebrew Formula

This guide explains how to test the starsheep Homebrew formula locally before publishing.

## Quick Start

Use the provided test script:

```bash
cd homebrew-tap
./test-local.sh
```

Or manually test using the commands below.

## Testing Methods

### Method 1: Automated Testing (Recommended)

Run the interactive test script:

```bash
cd homebrew-tap

# Full test (install, verify, optional uninstall)
./test-local.sh full

# Quick syntax check only
./test-local.sh quick

# Install only (no verification)
./test-local.sh install

# Verify existing installation
./test-local.sh verify
```

### Method 2: Manual Testing

#### Step 1: Validate Formula Syntax

```bash
cd homebrew-tap

# Check Ruby syntax
brew ruby -c Formula/starsheep.rb

# If this passes, the formula syntax is valid
```

#### Step 2: Install from Local Formula

```bash
# From the homebrew-tap directory
brew install --build-from-source --formula Formula/starsheep.rb
```

Options:
- `--build-from-source`: Build from source instead of using bottles
- `--formula`: Explicitly use a formula file
- `--verbose`: Show detailed output
- `--debug`: Enable debug mode

Example with debug output:
```bash
brew install --verbose --debug --build-from-source Formula/starsheep.rb
```

#### Step 3: Verify Installation

```bash
# Check if the command is available
which starsheep

# Test help command
starsheep --help

# Test init command
starsheep init zsh

# Test prompt generation (may need proper shell context)
cd /tmp
starsheep prompt
```

#### Step 4: Cleanup (Optional)

```bash
# Uninstall when done testing
brew uninstall --ignore-dependencies starsheep

# Also remove build dependencies if no longer needed
brew autoremove
```

### Method 3: Test as a Tap

#### Option A: Create a Local Tap

```bash
# Create a local tap directory
mkdir -p /usr/local/Homebrew/Library/Taps/local/homebrew-tap/Formula

# Copy the formula
cp homebrew-tap/Formula/starsheep.rb /usr/local/Homebrew/Library/Taps/local/homebrew-tap/Formula/

# Install from the local tap
brew install local/tap/starsheep
```

#### Option B: Use an Existing Tap

If you already have a tap (e.g., for testing):

```bash
# Copy formula to your tap
cp homebrew-tap/Formula/starsheep.rb /path/to/your/tap/Formula/

# Install from your tap
brew install --HEAD your-tap/starsheep
```

## Troubleshooting

### Common Issues

#### Formula Syntax Error

```bash
# Get detailed error
brew ruby -c Formula/starsheep.rb

# Common issues:
# 1. Missing dependencies
# 2. Invalid Ruby syntax
# 3. Wrong method names
```

#### Build Failure

```bash
# Build with verbose output
brew install --verbose Formula/starsheep.rb

# Common issues:
# 1. Zig not found → check depends_on "zig"
# 2. libgit2 missing → check depends_on "libgit2"
# 3. Compilation errors → test with: zig build --release=safe
```

#### Dependency Issues

```bash
# Check installed dependencies
brew list | grep -E "(zig|libgit2)"

# Install missing dependencies manually
brew install zig libgit2
```

#### Test Failures

The formula includes these tests:

```ruby
test do
  # Test basic functionality
  assert_match "starsheep", shell_output("#{bin}/starsheep --help")

  # Test init command
  init_output = shell_output("#{bin}/starsheep init zsh")
  assert_match "zsh", init_output

  # Test prompt generation
  system "#{bin}/starsheep", "prompt"
end
```

Run tests explicitly:
```bash
brew test Formula/starsheep.rb
```

### Debug Mode

```bash
# Enable debug mode for detailed information
brew install --debug Formula/starsheep.rb

# This will:
# - Show detailed build logs
# - Pause at various steps for inspection
# - Provide options to open a debug shell
```

### Viewing Build Logs

```bash
# Link to logs is shown after failed builds
# Or find logs manually:
find ~/Library/Logs/Homebrew/starsheep -name "*.log" -type f

# Watch logs in real-time
tail -f ~/Library/Logs/Homebrew/starsheep/*.log
```

## Testing Checklist

Before publishing your formula, verify:

- [ ] Formula syntax is valid
- [ ] Installation completes without errors
- [ ] Binary is correctly installed and accessible
- [ ] `--help` command works
- [ ] `init zsh` command works
- [ ] `prompt` command generates output
- [ ] Caveats message is displayed correctly
- [ ] No unnecessary dependencies are included
- [ ] Build uses appropriate optimization level

## Advanced Testing

### Test Different Build Configurations

```bash
# Test debug build (if supported)
brew install --build-from-source Formula/starsheep.rb -- --debug

# Test with specific options (if your formula has options)
# brew install --build-from-source Formula/starsheep.rb -- --with-feature
```

### Test on Multiple Platforms

If you have access to multiple machines:

```bash
# Test on Intel Mac
brew install --build-from-source Formula/starsheep.rb

# Test on Apple Silicon Mac
brew install --build-from-source Formula/starsheep.rb

# Test on Linux (if using Linuxbrew)
brew install --build-from-source Formula/starsheep.rb
```

### Simulate User Installation

```bash
# Create a fresh environment (optional)
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_INSTALL_CLEANUP=1

# Install exactly as users would
brew tap Crescent617/homebrew-tap
brew install starsheep
```

## Performance Testing

```bash
# Time the installation
time brew install --build-from-source Formula/starsheep.rb

# Check binary size
ls -lh $(brew --prefix)/bin/starsheep

# Verify no unnecessary dependencies
brew deps starsheep
brew uses starsheep
```

## Continued Integration Ideas

Consider adding these to a CI/CD pipeline:

```bash
#!/bin/bash
# ci-test.sh

set -e

echo "Testing starsheep formula..."

# Syntax check
brew ruby -c Formula/starsheep.rb

# Install test
brew install --build-from-source --formula Formula/starsheep.rb

# Run built-in tests
brew test Formula/starsheep.rb

# Cleanup
brew uninstall --ignore-dependencies starsheep

echo "All tests passed!"
```

## Getting Help

If you still have issues:

1. Check the detailed formula documentation:
   ```bash
   brew help create
   man brew
   ```

2. Look at similar Zig projects:
   ```bash
   brew cat zls      # Zig Language Server
   brew cat bun      # Zig-based JavaScript runtime
   ```

3. Visit the Homebrew documentation:
   - [Formula Cookbook](https://docs.brew.sh/Formula-Cookbook)
   - [Debugging Guide](https://docs.brew.sh/Troubleshooting)

4. Ask for help in:
   - [Homebrew discussions](https://github.com/homebrew/discussions/discussions)
   - [Zig community forums](https://ziggit.dev/)
