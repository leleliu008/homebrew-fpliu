class NdkPkg < Formula
  desc     "Package manager for Android NDK"
  homepage "https://github.com/leleliu008/ndk-pkg"
  url      "https://github.com/leleliu008/ndk-pkg/releases/download/v0.1.0/ndk-pkg-0.1.0.tar.gz"
  sha256   "869096feaaec83631a5a4ebaff5ca02b12d9b78534ca9e64f40dcd1916c35ef7"
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
