class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  url "https://github.com/paddo-tech/tether-cli/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "65c70e9eb9dc0ca7901564911c5f884364f724daeeda2d3189d2241ba3eec573"
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
