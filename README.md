# Rust Template
Use this [project as a template](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template) for creating new Rust repositories. For 

[See instructions for creating a repo from the template using the GitHub UI.](https://docs.github.com/en/repositories/creating-and-managing-repositories/creating-a-repository-from-a-template#creating-a-repository-from-a-template)

Example using the GitHub CLI:
```sh
gh repo create $REPO_NAME --template github.com/erikkrieg/rust-template --public
```

## Setup

### Install Nix
This project expects the Nix package manager to be installed on your system. See download instructions based on OS:
- [Linux](https://nixos.org/download.html#nix-install-linux)
- [MacOS](https://nixos.org/download.html#nix-install-macos)

### Using the nix-shell
While in the project directory, run: `nix develop` to enter a shell with the project dependencies.

To use your preferred shell instead of bash, you can do `nix develop --command $SHELL`

#### Automatically start nix shell
The nix shell can automatically start when changing into the project directory using a program like _nix-direnv_. Installation instructions: https://github.com/nix-community/nix-direnv#installation

Once installed, activate with `direnv allow`.

## Project commands

This project uses [Cargo](https://doc.rust-lang.org/cargo/) for managing Rust package, running, testing and compiling.

Some important build commands:
- Run the current package: `cargo run`
- Execute unit and integration tests of a package: `cargo test`
- Compile the current package: `cargo build`

More Cargo commands: https://doc.rust-lang.org/cargo/commands/index.html

