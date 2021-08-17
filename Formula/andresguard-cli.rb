class AndresguardCli < Formula
  desc     "Proguard resource for Android by wechat team"
  homepage "https://github.com/shwenzhang/AndResGuard"
  url      "https://github.com/leleliu008/AndResGuard-cli-wrapper/releases/download/v1.2.16/AndResGuard-cli-1.2.16.tar.gz"
  sha256   "69b1e5fe31d0441db951506627d74f808424488d08a7d26c3c74cb54f7ae8fdb"

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
