class WalleCli < Formula
  desc     "Android Signature V2 Scheme签名下的新一代渠道包打包神器"
  homepage "https://github.com/Meituan-Dianping/walle"
  url      "https://github.com/leleliu008/walle-cli-wrapper/releases/download/v1.1.6/walle-cli-1.1.6.tar.gz"
  sha256   "eef6d72c11e0ab35ef6937eea76087be1ae71a415ab12f85968ad6d627033284"

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
