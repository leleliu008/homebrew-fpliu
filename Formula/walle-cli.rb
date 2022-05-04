class WalleCli < Formula
  desc     "Android Signature V2 Scheme签名下的新一代渠道包打包神器"
  homepage "https://github.com/Meituan-Dianping/walle"
  url      "https://github.com/leleliu008/walle-cli-wrapper/releases/download/v1.1.6/walle-cli-1.1.6.tar.gz"
  sha256   "f1bd54c05edd1cfbbbde97ed2f78966409e911927bd377d61eaef8851634f285"

  depends_on "java"

  def install
    bin.install "bin/walle"
    lib.install "lib/walle-cli-all.jar"
    zsh_completion.install "zsh-completion/_walle" => "_walle"
  end

  test do
    system "#{bin}/walle", "--help"
  end
end
