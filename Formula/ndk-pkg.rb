class NdkPkg < Formula
  desc     "Package manager for Android NDK"
  homepage "https://github.com/leleliu008/ndk-pkg"
  url      "https://github.com/leleliu008/ndk-pkg/releases/download/v0.1.39/ndk-pkg-0.1.39.tar.gz"
  sha256   "564215ffdddd6390707a293e6bc4152de793fc8a8409da5ec8fd8aed42e87c06"
  head     "https://github.com/leleliu008/ndk-pkg.git"

  def install
    bin.install "bin/ndk-pkg"
    zsh_completion.install "zsh-completion/_ndk-pkg" => "_ndk-pkg"
  end

  test do
    system "#{bin}/ndk-pkg", "--help"
  end
end
