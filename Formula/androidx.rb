class Androidx < Formula
  desc     "Android project helper"
  homepage "https://github.com/leleliu008/androidx"
  url      "https://github.com/leleliu008/androidx/releases/download/v0.1.0/androidx-0.1.0.tar.gz"
  sha256   "321b506b4492ae474b6a9af9fd717b5a39daf28d48f4c5392c543ac406aea2b8"
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
