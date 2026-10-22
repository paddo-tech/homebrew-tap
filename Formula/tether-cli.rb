class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.4.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.4.1/tether-x86_64-apple-darwin.tar.gz"
      sha256 "b23dbb78abef1fd98eb44f707c0d9f1d66f573d622cd51760fc7d14a8ee98914"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.4.1/tether-aarch64-apple-darwin.tar.gz"
      sha256 "1e8c8681a38ba85ed221cd385a6f75f0cfe843645c799cbbeb2a8758a9d9e295"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.4.1/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2d5a4b2a1622f1fea8789d476503fabef0f0dda49fcd742671f8dc590f5f82e4"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.4.1/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d24cd455b107ed573900221d7aa79521d33381c01f21b13f24991b24c2b2db68"
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
