class NdkPkg < Formula
  desc     "Package manager for Android NDK"
  homepage "https://github.com/leleliu008/ndk-pkg"
  url      "https://github.com/leleliu008/ndk-pkg/releases/download/v0.1.17/ndk-pkg-0.1.17.tar.gz"
  sha256   "26be79e097bf8f27109d86ff4eed0d92c27fc2c91c413b3c9fda1e4f22b5d827"
  head     "https://github.com/leleliu008/ndk-pkg.git"

  def install
    bin.install "bin/ndk-pkg"
    zsh_completion.install "zsh-completion/_ndk-pkg" => "_ndk-pkg"
  end

  test do
    system "#{bin}/ndk-pkg", "--help"
  end
end
