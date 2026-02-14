class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.9.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.9.2/tether-x86_64-apple-darwin.tar.gz"
      sha256 "be26eb1dff15f25a30c80244f18ca7ce77c6c9711933b818e2e4d2a7159ddbea"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.9.2/tether-aarch64-apple-darwin.tar.gz"
      sha256 "d2dc558fd1c3e14312300f8f41013ec84d15808919292ea82e5d7195d1ffe967"
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
