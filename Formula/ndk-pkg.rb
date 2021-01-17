class NdkPkg < Formula
  desc     "Package manager for Android NDK"
  homepage "https://github.com/leleliu008/ndk-pkg"
  url      "https://github.com/leleliu008/ndk-pkg/releases/download/v0.1.0/ndk-pkg-0.1.0.tar.gz"
  sha256   "a6e658864ac51c2b07ceafa24f41fee630c91ec02e3a8ccac143c3a282ad55a2"
  head     "https://github.com/leleliu008/ndk-pkg.git"
  depends_on "curl"

  def install
    bin.install "bin/ndk-pkg"
    zsh_completion.install "zsh-completion/_ndk-pkg" => "_ndk-pkg"
  end

  test do
    system "#{bin}/ndk-pkg", "--help"
  end
end
