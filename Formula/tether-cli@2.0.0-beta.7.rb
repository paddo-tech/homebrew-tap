class TetherCliAT200Beta7 < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.0.0-beta.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.7/tether-x86_64-apple-darwin.tar.gz"
      sha256 "d5150d346661073a4fac6dc13bd4e710fbf68395c4c1850ec42bdab9c020f1b3"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.7/tether-aarch64-apple-darwin.tar.gz"
      sha256 "f618ce1911461bebf0895b9149a220a05208153e246d313409e978336d90e8ac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.7/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8dc40ca3e6e92921ed4d4bcc1a9f2ca9123a4bfcf24f336cf1cbf8a687508b9d"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.7/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "26c9209dfb1ffb0fa9075bf34ca49a73039ba99d766d7ddd838d84790a3dbb99"
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
