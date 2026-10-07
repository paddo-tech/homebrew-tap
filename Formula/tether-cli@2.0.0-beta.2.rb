class TetherCliAT200Beta2 < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.0.0-beta.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.2/tether-x86_64-apple-darwin.tar.gz"
      sha256 "cbc1fdf01d7d2d3dbb02af94ccd0c00167dda4f7b68ad1695ff268052d1f5466"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.2/tether-aarch64-apple-darwin.tar.gz"
      sha256 "695b77f6470e60779d9ce51196a412cdd3f7141e2b5b297975dd4972a2be9f0d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.2/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7ff64e4703f0f0c91ed4646d9d11acff034a38af5b8a47b681bc8ba1e8a35d6b"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.2/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "549e7642fd8a3998b326f08740158d6b7769af2915f9196886d7e08f2393b573"
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
