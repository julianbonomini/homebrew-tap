class Vago < Formula
  desc "Build a Goal in your repo while you're away"
  homepage "https://github.com/julianbonomini/vago"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/julianbonomini/vago/releases/download/v0.1.0/vago-darwin-arm64.tar.gz"
      sha256 "a4c54b5db88b3516dec504c0d5388c6b29815a52395bc8e509bbf545411b13b9"
    end
    on_intel do
      url "https://github.com/julianbonomini/vago/releases/download/v0.1.0/vago-darwin-x64.tar.gz"
      sha256 "eef80d9c26c7e1199e8940a0cc97fdc9655725bac481e1b07b4b55d0634c22a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/julianbonomini/vago/releases/download/v0.1.0/vago-linux-arm64.tar.gz"
      sha256 "dc2d9648ee7e01aa4b099b8c1516824501e2a120791d213e38caca01e45dad18"
    end
    on_intel do
      url "https://github.com/julianbonomini/vago/releases/download/v0.1.0/vago-linux-x64.tar.gz"
      sha256 "cf7979211abb00f9825c3fb6c8c97cc2908bdc8ee8c7c94ea194c7d1d730b3aa"
    end
  end

  def install
    bin.install "vago"
  end

  test do
    assert_match "vago", shell_output("#{bin}/vago --help")
  end
end
