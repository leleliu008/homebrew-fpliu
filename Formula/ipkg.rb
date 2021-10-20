class Ipkg < Formula
  desc     "Package manager for Xcode to build C/C++ project"
  homepage "https://github.com/leleliu008/ipkg"
  url      "https://github.com/leleliu008/ipkg/releases/download/v0.1.4/ipkg-0.1.4.tar.gz"
  sha256   "d21b8c1db237c1e9a8e5603d77077526f492406890790c0b7db94df4c4e8ba56"
  head     "https://github.com/leleliu008/ipkg.git"
  
  def install
    bin.install "bin/ipkg"
    zsh_completion.install "zsh-completion/_ipkg" => "_ipkg"
  end

  test do
    system "#{bin}/ipkg", "--help"
  end
end
