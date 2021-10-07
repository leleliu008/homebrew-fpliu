class Zpkg < Formula
  desc     "Lightweight, portable package manager for UNIX"
  homepage "https://github.com/leleliu008/zpkg"
  url      "https://github.com/leleliu008/zpkg/releases/download/v0.1.1/zpkg-0.1.1.tar.gz"
  sha256   "fd233e056cf770c9d2d53fad05b3f20cd40477bc1104e269a281785f6cff371d"
  head     "https://github.com/leleliu008/zpkg.git"

  def install
    bin.install "bin/zpkg"
    zsh_completion.install "zsh-completion/_zpkg" => "_zpkg"
  end

  test do
    system "#{bin}/zpkg", "--help"
  end
end
