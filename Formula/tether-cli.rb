class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  url "https://github.com/paddo-tech/tether-cli/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "dc4382282b485caa3100d098ebf0f189116bbce4cd7299784eac97fe88c9256e"
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
