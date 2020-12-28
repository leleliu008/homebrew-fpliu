class Ipkg < Formula
  desc     "Package manager for Xcode to build C/C++ project"
  homepage "https://github.com/leleliu008/ipkg"
  url      "https://github.com/leleliu008/ipkg/releases/download/v0.1.0/ipkg-0.1.0.tar.gz"
  sha256   "c482cc3d1fa9f5cc771ed6f20e57a88939e826f0a5a86e7380fa0e4062e01f19"
  head     "https://github.com/leleliu008/ipkg.git"
  
  depends_on "curl"
  depends_on "bat"
  
  def install
    bin.install "bin/ipkg"
    zsh_completion.install "zsh-completion/_ipkg" => "_ipkg"
  end

  test do
    system "#{bin}/ipkg", "--help"
  end
end
