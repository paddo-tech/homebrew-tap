class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.0.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.0.6/tether-x86_64-apple-darwin.tar.gz"
      sha256 "a3af5535d92a9b9b891cf6a671f40c8cb093671463e8cef4873d2ce1f8f08196"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.0.6/tether-aarch64-apple-darwin.tar.gz"
      sha256 "1fe0635ba6f4df5bdc37009fc83bb3d631b3cec7240592c895865b154664a0e3"
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
