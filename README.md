# Homebrew Tap for Ulf Schnabel's Tools

This tap provides easy installation of various CLI tools.

## Available Formulae

### gagent-cli
Google Workspace automation CLI for AI agents.

```bash
brew install ulfschnabel/tap/gagent-cli
```

### slka
Slack CLI for Agentic Workflows.

```bash
brew install ulfschnabel/tap/slka
```

## Usage

### First-time setup

```bash
# Add the tap
brew tap ulfschnabel/tap

# Install a tool
brew install gagent-cli
brew install slka
```

### Update

```bash
# Update tap and tools
brew update
brew upgrade gagent-cli
brew upgrade slka
```

## Why use Homebrew?

Installing via Homebrew avoids macOS quarantine issues that can occur with direct downloads. The binaries are properly signed and Homebrew handles them correctly.

## Direct Downloads

If you prefer direct downloads, releases are available at:
- [gagent-cli releases](https://github.com/ulfschnabel/gagent-cli/releases)
- [slka releases](https://github.com/ulfschnabel/slka/releases)

**Note**: Direct downloads require removing the quarantine attribute:
```bash
xattr -d com.apple.quarantine /path/to/binary
```

## About

Maintained by [@ulfschnabel](https://github.com/ulfschnabel)
