class Yapkeeper < Formula
  desc "Find, browse and resume Claude Code, Codex and Pi sessions"
  homepage "https://github.com/julianbonomini/yapkeeper"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/julianbonomini/yapkeeper/releases/download/v0.1.1/yapkeeper-aarch64-apple-darwin.tar.gz"
      sha256 "eb2b702874b9e6253a1ee18c99d90529d4361718c4ec8d0a0b0a3b491baeb15a"
    end
    on_intel do
      url "https://github.com/julianbonomini/yapkeeper/releases/download/v0.1.1/yapkeeper-x86_64-apple-darwin.tar.gz"
      sha256 "4aa976672501addb7d9473974d26b00ca618511d309298c78eab34f14b01ac0e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/julianbonomini/yapkeeper/releases/download/v0.1.1/yapkeeper-aarch64-unknown-linux-musl.tar.gz"
      sha256 "07fead2f45121008117fb5b9e9af2294275ca45b1e81455a4e91aa559609f25b"
    end
    on_intel do
      url "https://github.com/julianbonomini/yapkeeper/releases/download/v0.1.1/yapkeeper-x86_64-unknown-linux-musl.tar.gz"
      sha256 "417eab51fbf3e3bab49355943fae75eaebadd4cf8fa695b01b8927cb43ebdfea"
    end
  end

  def install
    bin.install "yapkeeper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yapkeeper --version")
  end
end
