class NdkPkg < Formula
  desc     "Package manager for Android NDK"
  homepage "https://github.com/leleliu008/ndk-pkg"
  url      "https://github.com/leleliu008/ndk-pkg/releases/download/v0.1.7/ndk-pkg-0.1.7.tar.gz"
  sha256   "074a421735baf59830fa70fcf82d4f98e18851c56e4cc0ff044a9fe7ca6483a7"
  head     "https://github.com/leleliu008/ndk-pkg.git"

  def install
    bin.install "bin/ndk-pkg"
    zsh_completion.install "zsh-completion/_ndk-pkg" => "_ndk-pkg"
  end

  test do
    system "#{bin}/ndk-pkg", "--help"
  end
end
