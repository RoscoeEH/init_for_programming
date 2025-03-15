# chmod +x main.sh

set -e


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
