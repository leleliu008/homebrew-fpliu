class Ipkg < Formula
  desc     "Package manager for Xcode to build C/C++ project"
  homepage "https://github.com/leleliu008/ipkg"
  url      "https://github.com/leleliu008/ipkg/releases/download/v0.1.0/ipkg-0.1.0.tar.gz"
  sha256   "ad589fc33ceb6bc949ad08f436d929239269d6e7de64d4d396f3c6c9f0c0e2e7"
  head     "https://github.com/leleliu008/ipkg.git"
  
  def install
    bin.install "bin/ipkg"
    zsh_completion.install "zsh-completion/_ipkg" => "_ipkg"
  end

  test do
    system "#{bin}/ipkg", "--help"
  end
end
