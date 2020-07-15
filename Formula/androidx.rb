class Androidx < Formula
  desc     "Android project helper"
  homepage "https://github.com/leleliu008/androidx"
  url      "https://github.com/leleliu008/androidx/releases/download/v0.1.0/androidx-0.1.0.tar.gz"
  sha256   "2544aaddb6527392a5170b06a0dda94b97c1e869b8f1fb0fb8918760a449baea"
  head     "https://github.com/leleliu008/androidx.git"
  
  depends_on "android-sdk"
  depends_on "qihu360jiagubao"
  depends_on "andresguard-cli"
  depends_on "walle-cli"
  depends_on "p7zip"
  
  def install
    bin.install "bin/androidx"
    zsh_completion.install "zsh-completion/_androidx" => "_androidx"
  end

  test do
    system "#{bin}/androidx", "--help"
  end
end
