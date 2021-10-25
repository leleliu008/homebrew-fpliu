class NdkPkg < Formula
  desc     "Package manager for Android NDK"
  homepage "https://github.com/leleliu008/ndk-pkg"
  url      "https://github.com/leleliu008/ndk-pkg/releases/download/v0.1.9/ndk-pkg-0.1.9.tar.gz"
  sha256   "ea036cbe3c0baa41ef6d7c746061595880ea2578e122e4d0acff6774495f1a9c"
  head     "https://github.com/leleliu008/ndk-pkg.git"

  def install
    bin.install "bin/ndk-pkg"
    zsh_completion.install "zsh-completion/_ndk-pkg" => "_ndk-pkg"
  end

  test do
    system "#{bin}/ndk-pkg", "--help"
  end
end
