class TetherCliAT110Beta1 < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.1.0-beta.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.1.0-beta.1/tether-x86_64-apple-darwin.tar.gz"
      sha256 "9c31c8fd30612fdeacb2af40ffab9b535b45e30817489c46194ac1c71a26d005"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.1.0-beta.1/tether-aarch64-apple-darwin.tar.gz"
      sha256 "7473c7986e128498624dfcbde8af04669f2ebe9fb191a73bc36d4e82312aea52"
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
