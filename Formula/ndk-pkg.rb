class NdkPkg < Formula
  desc     "Package manager for Android NDK"
  homepage "https://github.com/leleliu008/ndk-pkg"
  url      "https://github.com/leleliu008/ndk-pkg/releases/download/v0.1.38/ndk-pkg-0.1.38.tar.gz"
  sha256   "19a0ad0eb294c662e79c20154c97742e727a5a2852dc51e14b0af226c0f1b6d4"
  head     "https://github.com/leleliu008/ndk-pkg.git"

  def install
    bin.install "bin/ndk-pkg"
    zsh_completion.install "zsh-completion/_ndk-pkg" => "_ndk-pkg"
  end

  test do
    system "#{bin}/ndk-pkg", "--help"
  end
end
