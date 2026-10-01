class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.13.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.13.1/tether-x86_64-apple-darwin.tar.gz"
      sha256 "aa50288b812a6e32c2fb22acacbb4bf80856ea5a7e544f992c8d3e1d53001582"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.13.1/tether-aarch64-apple-darwin.tar.gz"
      sha256 "7c73f5ed16362238614eddbe3e9adddf29b8b0bad362b856466a51ba3f0fa418"
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
