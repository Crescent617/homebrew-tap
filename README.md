# Crescent617's Homebrew Tap

Personal Homebrew formulae for my projects.

## How to use this tap

```bash
# Add this tap
brew tap Crescent617/homebrew-tap

# Install formulae
brew install starsheep
```

## Available Formulae

- **starsheep** - A blazingly fast, customizable shell prompt generator written in Zig

## Bottles (Pre-built Binaries)

This tap provides pre-built bottles for faster installation. When you run `brew install starsheep`, Homebrew will download the pre-built binary instead of compiling from source.

Supported platforms:
- macOS Intel (x86_64)
- macOS Apple Silicon (arm64)
- Linux (x86_64)

## Publishing New Versions

To publish a new version with bottles:

1. Update the formula with new `url` and `sha256`
2. Submit a PR
3. Label the PR with `pr-pull` to trigger bottle building
4. The bottles will be built automatically and uploaded to GitHub Releases

## How to Contribute

To add a new formula to this tap:

1. Fork this repository
2. Add your formula to the `Formula/` directory
3. Test your formula:
```bash
brew install --build-from-source Formula/your-formula.rb
```
4. Submit a pull request

## Repository Structure

```
.
├── Formula/
│   └── starsheep.rb
└── README.md
```

## License

MIT
