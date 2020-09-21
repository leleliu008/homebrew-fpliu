class Ipkg < Formula
  desc     "Package manager for Xcode to build C/C++ project"
  homepage "https://github.com/leleliu008/ipkg"
  url      "https://github.com/leleliu008/ipkg/releases/download/v0.1.0/ipkg-0.1.0.tar.gz"
  sha256   "598e3eb52601fabf5ee531a616a3f7b8bf7b322e083cc75018be78796101d8d7"
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
