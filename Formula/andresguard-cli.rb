class AndresguardCli < Formula
  desc     "Proguard resource for Android by wechat team"
  homepage "https://github.com/shwenzhang/AndResGuard"
  url      "https://github.com/leleliu008/AndResGuard-cli-wrapper/releases/download/v1.2.16/AndResGuard-cli-1.2.16.tar.gz"
  sha256   "504601758154dd1bbf643ffe80ca49711cd5e76231ba1970a1fd88109e06fc52"

  depends_on "java"
  depends_on "p7zip"

  def install
    bin.install "bin/andresguard"
    lib.install "lib/AndResGuard-cli-#{version}.jar"
    zsh_completion.install "zsh-completion/_andresguard" => "_andresguard"
  end

  test do
    system "#{bin}/andresguard", "--version"
  end
end
