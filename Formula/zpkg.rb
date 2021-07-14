class Zpkg < Formula
  desc     "Lightweight, portable package manager for UNIX"
  homepage "https://github.com/leleliu008/zpkg"
  url      "https://github.com/leleliu008/zpkg/releases/download/v0.1.0/zpkg-0.1.0.tar.gz"
  sha256   "4ff0682f8d7863703d09931c95d76c029bfb4d5770ffa24286ab9db2a41abcce"
  head     "https://github.com/leleliu008/zpkg.git"

  def install
    bin.install "bin/zpkg"
    zsh_completion.install "zsh-completion/_zpkg" => "_zpkg"
  end

  test do
    system "#{bin}/zpkg", "--help"
  end
end
