class Ipkg < Formula
  desc     "Package manager for Xcode to build C/C++ project"
  homepage "https://github.com/leleliu008/ipkg"
  url      "https://github.com/leleliu008/ipkg/releases/download/v0.1.0/ipkg-0.1.0.tar.gz"
  sha256   "61ccb4a434ddf672be6bc7218c4c54471b26bc46915388c13a1c409c67b15a73"
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
