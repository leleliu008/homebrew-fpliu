class Ipkg < Formula
  desc     "Package manager for Xcode to build C/C++ project"
  homepage "https://github.com/leleliu008/ipkg"
  url      "https://github.com/leleliu008/ipkg/releases/download/v0.1.0/ipkg-0.1.0.tar.gz"
  sha256   "cb3208847d55c2a520c0f7c16698f2b6ab8f5959421d98d3a6d43f25bdeff327"
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
