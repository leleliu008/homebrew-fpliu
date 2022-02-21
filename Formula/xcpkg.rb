class Xcpkg < Formula
  desc     "Package manager for Xcode to build C/C++ project"
  homepage "https://github.com/leleliu008/xcpkg"
  url      "https://github.com/leleliu008/xcpkg/releases/download/v0.1.5/xcpkg-0.1.5.tar.gz"
  sha256   "0e74afe981efad2d05f1360155227e5874969a4abd871d45b9e93ff9a9d0b1b6"
  head     "https://github.com/leleliu008/xcpkg.git"
  
  def install
    bin.install "bin/xcpkg"
    zsh_completion.install "zsh-completion/_xcpkg" => "_xcpkg"
  end

  test do
    system "#{bin}/xcpkg", "--help"
  end
end
