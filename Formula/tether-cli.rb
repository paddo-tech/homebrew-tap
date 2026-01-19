class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.4.1/tether-x86_64-apple-darwin.tar.gz"
      sha256 "96fdef853b9c12631c00e12ddbbd9a96ad4167049ca181a16a2aaffbc997fc9c"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.4.1/tether-aarch64-apple-darwin.tar.gz"
      sha256 "4f3ab562ad7521fd90f87aab1c0fc2930910482586f9e8cbe91978c26ab6c89b"
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
