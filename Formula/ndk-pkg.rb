class NdkPkg < Formula
  desc     "Package manager for Android NDK"
  homepage "https://github.com/leleliu008/ndk-pkg"
  url      "https://github.com/leleliu008/ndk-pkg/releases/download/v0.1.0/ndk-pkg-0.1.0.tar.gz"
  sha256   "520cc7af92b71f4060ea15f312ca998b0a4ae8968508c5267839a8dfeb24af4f"
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
