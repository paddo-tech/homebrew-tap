class TetherCliAT200Beta8 < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.0.0-beta.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.8/tether-x86_64-apple-darwin.tar.gz"
      sha256 "c38ded3b63ee2c47420dfed85946408554f9907e0f186482500da1bef437f084"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.8/tether-aarch64-apple-darwin.tar.gz"
      sha256 "0605498959ce8f93b9bcf99309217f5ab1b407d565a58bf968041261722bbc5d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.8/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6d7651c0bec0c430542b4d5d849d4254bcf28ebcf3c7872d1ee053dc62435412"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.8/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ed428dc3ebd67ea1e8ebbc1e3afef25b8e4c08c08c4a26658a1b74577f820612"
    end
  end

  def install
    bin.install "tether"
  end

  def caveats
    <<~EOS
      To get started, run:
        tether init

      This will set up your sync repository and start the background daemon.
    EOS
  end

  test do
    assert_match "tether", shell_output("#{bin}/tether --help")
  end
end
