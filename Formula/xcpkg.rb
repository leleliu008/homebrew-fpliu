class Xcpkg < Formula
  desc     "Package manager for Xcode to build C/C++ project"
  homepage "https://github.com/leleliu008/xcpkg"
  url      "https://github.com/leleliu008/xcpkg/releases/download/v0.1.6/xcpkg-0.1.6.tar.gz"
  sha256   "3f5b51f7c9a2c163e51e29c205dc43547dfe6a278491c6b95be2274f484b075b"
  head     "https://github.com/leleliu008/xcpkg.git"
  
  def install
    bin.install "bin/xcpkg"
    zsh_completion.install "zsh-completion/_xcpkg" => "_xcpkg"
  end

  test do
    system "#{bin}/xcpkg", "--help"
  end
end
