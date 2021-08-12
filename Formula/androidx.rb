class Androidx < Formula
  desc     "Android project helper"
  homepage "https://github.com/leleliu008/androidx"
  url      "https://github.com/leleliu008/androidx/releases/download/v0.1.0/androidx-0.1.0.tar.gz"
  sha256   "6194c8c32e0fb0d23ef4667d89447b969b03a22ffaaf86959bb1f4dd38ee1860"
  head     "https://github.com/leleliu008/androidx.git"
  
  def install
    bin.install "bin/androidx"
    zsh_completion.install "zsh-completion/_androidx" => "_androidx"
  end

  test do
    system "#{bin}/androidx", "--help"
  end
end
