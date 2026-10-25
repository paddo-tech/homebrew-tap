class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.5.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.5.0/tether-x86_64-apple-darwin.tar.gz"
      sha256 "f81329d15e10be7753f01a295d925326a400dea24ca51f4ca72db27c6f98fd3d"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.5.0/tether-aarch64-apple-darwin.tar.gz"
      sha256 "0692f3dace808e5a402b04b758f7d4c1ea4254618235710a32b35b5b062284dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.5.0/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bcf7a1dc2f87a95622755f10b40ab4f3aea408e3fc10e2eb3597f2665949cf58"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.5.0/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "296d9c9d983618b8c343c9c280a6fce1a2164c97e656bd1e98173ded319fc34e"
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
