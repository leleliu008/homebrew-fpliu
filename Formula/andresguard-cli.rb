class AndresguardCli < Formula
  desc     "Proguard resource for Android by wechat team"
  homepage "https://github.com/shwenzhang/AndResGuard"
  url      "https://github.com/leleliu008/AndResGuard-cli-wrapper/releases/download/v1.2.16/AndResGuard-cli-1.2.16.tar.gz"
  sha256   "84f704b2800a26e8625a8615235926ae714acb7530bc04ac85038b129fddc1a6"

  depends_on "p7zip"
  depends_on "android-sdk"

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
