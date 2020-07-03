class NdkPkg < Formula
  desc     "Package manager for Android NDK"
  homepage "https://github.com/leleliu008/ndk-pkg"
  url      "https://github.com/leleliu008/ndk-pkg/releases/download/v0.1.0/ndk-pkg-0.1.0.tar.gz"
  sha256   "689bcd2ca72163c78fe044e989ead4aef3d88834d3fd2801a8fcd6c1d20c2ddf"
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
