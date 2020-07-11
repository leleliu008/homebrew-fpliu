class Androidx < Formula
  desc     "Android project helper"
  homepage "https://github.com/leleliu008/androidx"
  url      "https://github.com/leleliu008/androidx/releases/download/v0.1.0/androidx-0.1.0.tar.gz"
  sha256   "e7e5fa1246e3134acf910c1624d169c07c8369ae5eab64fc120706b5d6d533e2"
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
