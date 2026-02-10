class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.9.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.9.1/tether-x86_64-apple-darwin.tar.gz"
      sha256 "d3499b17494ede4d8249dbdc83d42626efb597ca9388feac2368cc8b5a00c8a4"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.9.1/tether-aarch64-apple-darwin.tar.gz"
      sha256 "9cb3b9ef059358ebe00fa00af47141cfe3b0a3bb4a0319bad57fa2d0c4f3a230"
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
