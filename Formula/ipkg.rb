class Ipkg < Formula
  desc     "Package manager for Xcode to build C/C++ project"
  homepage "https://github.com/leleliu008/ipkg"
  url      "https://github.com/leleliu008/ipkg/releases/download/v0.1.2/ipkg-0.1.2.tar.gz"
  sha256   "ff34df3ce9054b24819dd04adb1f79a3e6304899d0a3548505ec098dbb9acc10"
  head     "https://github.com/leleliu008/ipkg.git"
  
  def install
    bin.install "bin/ipkg"
    zsh_completion.install "zsh-completion/_ipkg" => "_ipkg"
  end

  test do
    system "#{bin}/ipkg", "--help"
  end
end
