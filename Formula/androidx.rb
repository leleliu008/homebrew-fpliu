class Androidx < Formula
  desc     "Android project helper"
  homepage "https://github.com/leleliu008/androidx"
  url      "https://github.com/leleliu008/androidx/releases/download/v0.1.0/androidx-0.1.0.tar.gz"
  sha256   "7cd77e91120d3cdafc104dd2db782fcc21dd13c0fa064da04ca9d532caae5e9a"
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
