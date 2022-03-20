class Xcpkg < Formula
  desc     "Package manager for Xcode to build C/C++ project"
  homepage "https://github.com/leleliu008/xcpkg"
  url      "https://github.com/leleliu008/xcpkg/releases/download/v0.1.9/xcpkg-0.1.9.tar.gz"
  sha256   "77181101ee9ce434c4c1928b0441f35c63aea13aa93b90b0f97bd109d842d57c"
  head     "https://github.com/leleliu008/xcpkg.git"
  
  def install
    bin.install "bin/xcpkg"
    zsh_completion.install "zsh-completion/_xcpkg" => "_xcpkg"
  end

  test do
    system "#{bin}/xcpkg", "--help"
  end
end
