class TetherCliAT200Beta9 < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.0.0-beta.9"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.9/tether-x86_64-apple-darwin.tar.gz"
      sha256 "3b3e9daf2f570a6dd0c366d1972a24d099e992f3f2ab5455a7664369bd34fade"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.9/tether-aarch64-apple-darwin.tar.gz"
      sha256 "7e763dfecac8a55e4562f892a467d6f5433b92b2b7f82b5503167c25ff68a1ba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.9/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "39741508753ef6055dff6f806d81cfbea5503afd4e9661cec43981be9fa8d39c"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.0.0-beta.9/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0bd6c1fe04885e14f259f0ad460a468bd6fee4ed3de92759cf01996b1f38b070"
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
