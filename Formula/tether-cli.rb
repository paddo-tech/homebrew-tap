class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.5.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.5.1/tether-x86_64-apple-darwin.tar.gz"
      sha256 "98150e632e5667c0665dad207a6d70740b931560f8c3dff30a1f823680802500"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.5.1/tether-aarch64-apple-darwin.tar.gz"
      sha256 "4c44f73eb3ef2f3f8742ae5e4289ed30cf4211f3fc8020a39e4ee30300dcb0ae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.5.1/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "716393327bbbc44b19f8262ff39b6a488fedae1cd7870ad13055cd19a35f67a6"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.5.1/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f7db04d601393eec43a674063457e44a35b4b752eae9d2692b8a80e83ced2408"
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
