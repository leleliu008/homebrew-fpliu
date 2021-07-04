class NdkPkg < Formula
  desc     "Lightweight, portable package manager for UNIX"
  homepage "https://github.com/leleliu008/zpkg"
  url      "https://github.com/leleliu008/zpkg/releases/download/v0.1.0/zpkg-0.1.0.tar.gz"
  sha256   "66399f32f316d4791b84269a77c7243849ce0370802abb866806ed5142ace6a5"
  head     "https://github.com/leleliu008/zpkg.git"

  def install
    bin.install "bin/zpkg"
    zsh_completion.install "zsh-completion/_zpkg" => "_zpkg"
  end

  test do
    system "#{bin}/zpkg", "--help"
  end
end
