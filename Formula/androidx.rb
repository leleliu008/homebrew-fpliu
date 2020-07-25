class Androidx < Formula
  desc     "Android project helper"
  homepage "https://github.com/leleliu008/androidx"
  url      "https://github.com/leleliu008/androidx/releases/download/v0.1.0/androidx-0.1.0.tar.gz"
  sha256   "16bfb70ac96b96421bca9d47df6b473532caf2ac8ce8753022f66bbccc31b8d1"
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
