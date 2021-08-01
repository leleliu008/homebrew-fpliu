class Zpkg < Formula
  desc     "Lightweight, portable package manager for UNIX"
  homepage "https://github.com/leleliu008/zpkg"
  url      "https://github.com/leleliu008/zpkg/releases/download/v0.1.0/zpkg-0.1.0.tar.gz"
  sha256   "e4f49362fca1ff489b3e003e7a82c80a76702576a91482a322096f5258d8cef8"
  head     "https://github.com/leleliu008/zpkg.git"

  def install
    bin.install "bin/zpkg"
    zsh_completion.install "zsh-completion/_zpkg" => "_zpkg"
  end

  test do
    system "#{bin}/zpkg", "--help"
  end
end
