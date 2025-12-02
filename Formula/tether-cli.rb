class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  url "https://github.com/paddo-tech/tether-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "311548a39e6ee74bca4bece179d76cfff099a85e802018f4b77463d7ef4758e6"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "tether", shell_output("#{bin}/tether --help")
  end
end
