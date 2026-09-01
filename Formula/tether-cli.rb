class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "1.12.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.12.0/tether-x86_64-apple-darwin.tar.gz"
      sha256 "cf305ad9fcd9c06d61d1ea4ad3a7353e7293c51d7c37dc08612ab845424fd896"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v1.12.0/tether-aarch64-apple-darwin.tar.gz"
      sha256 "3298883dce8bd4a9729724e021b6adc895294be00f6f0f14dff642baab9f99eb"
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
