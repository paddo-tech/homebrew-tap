class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.6.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.6.2/tether-x86_64-apple-darwin.tar.gz"
      sha256 "04e81120b6e9e7b9d186fe9209e7bb0a98dc24198cd6c532166099766bf3a9a8"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.6.2/tether-aarch64-apple-darwin.tar.gz"
      sha256 "a0e82ee4cde8f4982a62fb9d8059df15fb6ffe900fd7c80523ab4e0900876779"
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
