class AndresguardCli < Formula
  desc     "Proguard resource for Android by wechat team"
  homepage "https://github.com/shwenzhang/AndResGuard"
  url      "https://github.com/leleliu008/AndResGuard-cli-wrapper/releases/download/v1.2.16/AndResGuard-cli-1.2.16.tar.gz"
  sha256   "0028aafc12cf099f5a3c3002bde05832b470d6a2c7005d54ca0cb7c6c5ce8e9a"

  depends_on "p7zip"

  def install
    bin.install "bin/andresguard"
    lib.install "lib/AndResGuard-cli-#{version}.jar"
    zsh_completion.install "zsh-completion/_andresguard" => "_andresguard"
  end

  def caveats
    <<~EOS
      this software depends on JDK. you may need install JDK yourself.
    EOS
  end

  test do
    system "#{bin}/andresguard", "--version"
  end
end
