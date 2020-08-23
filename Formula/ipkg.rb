class Ipkg < Formula
  desc     "Package manager for Xcode to build C/C++ project"
  homepage "https://github.com/leleliu008/ipkg"
  url      "https://github.com/leleliu008/ipkg/releases/download/v0.1.0/ipkg-0.1.0.tar.gz"
  sha256   "07b56290632ad5cb3bbf8d1276ce5e8265177e8d887384aa8295ff402ec4797b"
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
