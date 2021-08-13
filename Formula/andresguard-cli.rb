class AndresguardCli < Formula
  desc     "Proguard resource for Android by wechat team"
  homepage "https://github.com/shwenzhang/AndResGuard"
  url      "https://github.com/leleliu008/AndResGuard-cli-wrapper/releases/download/v1.2.16/AndResGuard-cli-1.2.16.tar.gz"
  sha256   "341f44f6110afa83e92bc1713d50fd87b7416aed01dd158dfacb383e6f867cc4"

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
