class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  url "https://github.com/paddo-tech/tether-cli/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "57a07ab593fc1103c8c751a22f53f674f875c27244575b967c330749c5f218e5"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
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
