class WalleCli < Formula
  desc     "Android Signature V2 Scheme签名下的新一代渠道包打包神器"
  homepage "https://github.com/Meituan-Dianping/walle"
  url      "https://github.com/leleliu008/walle-cli-wrapper/releases/download/v1.1.6/walle-cli-1.1.6.tar.gz"
  sha256   "af2e6b3d11908cecb1898c7968fc91c57776d992a892be85abe0650fb66829c0"

  def install
    bin.install "bin/walle"
    lib.install "lib/walle-cli-all.jar"
    zsh_completion.install "zsh-completion/_walle" => "_walle"
  end

  def caveats
    <<~EOS
      this software depends on JDK. you may need install JDK.
    EOS
  end

  test do
    system "#{bin}/walle", "--help"
  end
end
