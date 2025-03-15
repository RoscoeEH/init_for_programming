# chmod +x main.sh

set -e

# Check if Homebrew is installed
if ! command -v brew &>/dev/null; then
    echo "Homebrew not found! Installing Homebrew..."
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "Homebrew is already installed."
fi

PYTHON_PACKAGES=(
    "python3"
)

RUST_PACKAGES=(
    "rust"
    "rustup"
    "rust-analyzer"
)

C_CPP_PACKAGES=(
    "llvm"
    "cmake"
    "gcc"
)

OCAML_PACKAGES=(
    "opam"
    "dune"
)

OPAM_PACKAGES=(
    "merlin"
    "ocamlformat"
)

OTHER_PACKAGES=(
    "ripgrep"
)


echo "Updating Homebrew..."
brew update


echo "Installing..."

brew install "${PYTHON_PACKAGES[@]}"

brew install "${RUST_PACKAGES[@]}"

brew install "${C_CPP_PACKAGES[@]}"

brew install "${OCAML_PACKAGES[@]}"

opam install "${OPAM_PACKAGES[@]}"

brew install "${OTHER_PACKAGES[@]}"


echo "All packages installed!"
