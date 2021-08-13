class AndresguardCli < Formula
  desc     "Proguard resource for Android by wechat team"
  homepage "https://github.com/shwenzhang/AndResGuard"
  url      "https://github.com/leleliu008/AndResGuard-cli-wrapper/releases/download/v1.2.16/AndResGuard-cli-1.2.16.tar.gz"
  sha256   "434acce2989105264660b241884afbbeb6f93d0b63319e0c69f3275e4e4a85be"

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
