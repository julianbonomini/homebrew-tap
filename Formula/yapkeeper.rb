class Yapkeeper < Formula
  desc "Find, browse and resume Claude Code, Codex and Pi sessions"
  homepage "https://github.com/julianbonomini/yapkeeper"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/julianbonomini/yapkeeper/releases/download/v0.2.0/yapkeeper-aarch64-apple-darwin.tar.gz"
      sha256 "d8f4953054fe5824e314b636f56952c1b8c8530baf2f3d916f100e474f6476e3"
    end
    on_intel do
      url "https://github.com/julianbonomini/yapkeeper/releases/download/v0.2.0/yapkeeper-x86_64-apple-darwin.tar.gz"
      sha256 "df89e9b49a7641de30227dfc372cc37c9048b42eb2b9122c5927ebd9a5725d24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/julianbonomini/yapkeeper/releases/download/v0.2.0/yapkeeper-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e110bc536fa7daa9fb17cd53a6b0c62932895f3a64e5bf4703581c95979c87d9"
    end
    on_intel do
      url "https://github.com/julianbonomini/yapkeeper/releases/download/v0.2.0/yapkeeper-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f5a453f98444dc7c18aa42d82a8ff71c933354bf34c9a42949ddd210df7a1f2e"
    end
  end

  def install
    bin.install "yapkeeper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/yapkeeper --version")
  end
end
