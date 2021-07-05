class ZPkg < Formula
  desc     "Lightweight, portable package manager for UNIX"
  homepage "https://github.com/leleliu008/zpkg"
  url      "https://github.com/leleliu008/zpkg/releases/download/v0.1.0/zpkg-0.1.0.tar.gz"
  sha256   "88bb498367cb8e9bddd4b764e7548020789947eb6f72c3b803624ee06b1a0ded"
  head     "https://github.com/leleliu008/zpkg.git"

  def install
    bin.install "bin/zpkg"
    zsh_completion.install "zsh-completion/_zpkg" => "_zpkg"
  end

  test do
    system "#{bin}/zpkg", "--help"
  end
end
