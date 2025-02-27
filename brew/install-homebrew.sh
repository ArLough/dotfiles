
install-homebrew(){
    if ! command -v brew &> /dev/null; then
      echo "[Homebrew] Homebrew not found, installing..."
      # run brew install but mute the output
      /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" > /dev/null
    else
      echo "[Homebrew] Homebrew is already installed."
    fi
  }
