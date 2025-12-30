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
