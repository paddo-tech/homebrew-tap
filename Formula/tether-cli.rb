class TetherCli < Formula
  desc "Sync dotfiles and packages across machines"
  homepage "https://github.com/paddo-tech/tether-cli"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.1.0/tether-x86_64-apple-darwin.tar.gz"
      sha256 "fa47f97ae1afc422bb69f4a9920518a248009d6c8a39b866f8b28998efc9d13f"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.1.0/tether-aarch64-apple-darwin.tar.gz"
      sha256 "2961c6d5c0c53122aa0d272d51f49a8e21e4833a4c943088dd1f3cfa735a83ac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.1.0/tether-x86_64-unknown-linux-musl.tar.gz"
      sha256 "75b1a5626f5e96d0e9b8c1f8956c6393092c028afc39ccc071fc4d3bf40d5147"
    end
    on_arm do
      url "https://github.com/paddo-tech/tether-cli/releases/download/v2.1.0/tether-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5d5417cb3db39f0dcd30f306c4236d73cddc7f176605f2a9a2bfd68155ba14b9"
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
