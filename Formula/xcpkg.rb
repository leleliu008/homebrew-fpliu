class Xcpkg < Formula
  desc     "Package manager for Xcode to build C/C++ project"
  homepage "https://github.com/leleliu008/xcpkg"
  url      "https://github.com/leleliu008/xcpkg/releases/download/v0.1.7/xcpkg-0.1.7.tar.gz"
  sha256   "fe1ca9d771cb208327a48b012f6775a2fad42657a8d2c5489baff6b0fa1f8ef5"
  head     "https://github.com/leleliu008/xcpkg.git"
  
  def install
    bin.install "bin/xcpkg"
    zsh_completion.install "zsh-completion/_xcpkg" => "_xcpkg"
  end

  test do
    system "#{bin}/xcpkg", "--help"
  end
end
