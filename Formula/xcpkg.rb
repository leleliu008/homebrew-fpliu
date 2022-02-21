class Xcpkg < Formula
  desc     "Package manager for Xcode to build C/C++ project"
  homepage "https://github.com/leleliu008/xcpkg"
  url      "https://github.com/leleliu008/xcpkg/releases/download/v0.1.4/xcpkg-0.1.4.tar.gz"
  sha256   "d21b8c1db237c1e9a8e5603d77077526f492406890790c0b7db94df4c4e8ba56"
  head     "https://github.com/leleliu008/xcpkg.git"
  
  def install
    bin.install "bin/xcpkg"
    zsh_completion.install "zsh-completion/_xcpkg" => "_xcpkg"
  end

  test do
    system "#{bin}/xcpkg", "--help"
  end
end
