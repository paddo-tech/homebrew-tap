class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.3.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.3.1/tether-x86_64-apple-darwin.tar.gz"
      sha256 "0359e562122716acf7aa45aeb8b59e57f693c202f7e2600f61a35271abe33d63"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.3.1/tether-aarch64-apple-darwin.tar.gz"
      sha256 "aaa473730f8b8ec69299b6f22631689a827e7aa4397a3955218d3093cbe035a3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.3.1/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8cad4def4039309ea592572d4d00c55630873ae79a39deceeda53fb1fc5bba32"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.3.1/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "42f442edb8e66ec54494dc34a34720aec5f667087c0519c47adc69b15daa3fdf"
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
