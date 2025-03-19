# GitGen

A simple utility to generate unique git branch names based on your git username and a timestamp hash.

## Installation

You can install GitGen using Homebrew:

```bash
brew tap moogacs/gitgen
brew install gitgen
```

## Usage

Simply run `gitgen` in your git repository to create a new branch with a unique name:

```bash
cd your-git-repo
gitgen
```

This will create and checkout a new branch with a name in the format: `username-hash`
where `username` is your git username (converted to lowercase with spaces replaced by dashes)
and `hash` is an 8-character hash based on the current timestamp.

### Options

- `--version`: Display the current version of gitgen

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.