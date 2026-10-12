class TetherCliAT200Beta10 < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.0.0-beta.10"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.10/tether-x86_64-apple-darwin.tar.gz"
      sha256 "e889a58f61fb681bc904f2b827f6ac304b24e76aaba5fe8e9e552f8fcd429bb5"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.10/tether-aarch64-apple-darwin.tar.gz"
      sha256 "5c475c3a19dc54f6bcf75fb01b007e6920c3a737a69cb92248d42a37ac47aa3f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.10/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ff324af59cc4a6abb77369b11ee095740f3f97731e04349cc261847613e24086"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.10/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ed2a2322e14b184fbcd9e540e0fcfb19194ee24dff3eacf64238c903e3ae2a8a"
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
