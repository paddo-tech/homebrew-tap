class TetherCliAT200Beta1 < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.0.0-beta.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.1/tether-x86_64-apple-darwin.tar.gz"
      sha256 "ced2948496bbed75accfb1bfc50246790f2dc53ee478fd1b4de442ae3cb51a4f"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.1/tether-aarch64-apple-darwin.tar.gz"
      sha256 "631373b0d8d8acbc302a9f94f1707bdb2a23a2354277805f51552b16d1b06ad7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.1/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f7d213556a9ae5cf7fc4688078884e2fb53a8532d042bb8645087fbf86b770b9"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.1/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9569ff85b9f3960ad707b98f39dcb12f5ed385c4c433ca5e66b443f0d3a7c118"
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
