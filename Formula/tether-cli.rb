class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.1.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.1.6/tether-x86_64-apple-darwin.tar.gz"
      sha256 "c51e88e056cba0a232c7746ac12bcddbe6af58284ff26404550c23497058d981"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.1.6/tether-aarch64-apple-darwin.tar.gz"
      sha256 "fc8538fd0b1ef0cd686a1eacab676cad513e24c54e4ee35c85031011413b01d1"
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
