class AndroidSdk < Formula
  version '4333796'
  
  homepage 'https://developer.android.google.cn/studio/releases/sdk-tools'
  
  # https://developer.android.google.cn/studio/index.html
  on_linux do
    url "https://dl.google.com/android/repository/sdk-tools-linux-#{version}.zip"
    sha256 '92ffee5a1d98d856634e8b71132e8a95d96c83a63fde1099be3d86df3106def9'
  end

  on_macos do
    url "https://dl.google.com/android/repository/sdk-tools-darwin-#{version}.zip"
    sha256 'ecb29358bc0f13d7c2fa0f9290135a5b608e38434aad9bf7067d0252c160853e'
  end
  
  def install
    system "cp -r * #{prefix}"
    bin.install "android"
    bin.install "emulator"
    bin.install "emulator-check"
    bin.install "mksdcard"
    bin.install "monitor"
    bin.install "bin/archquery"
    bin.install "bin/avdmanager"
    bin.install "bin/jobb"
    bin.install "bin/lint"
    bin.install "bin/monkeyrunner"
    bin.install "bin/screenshot2"
    bin.install "bin/sdkmanager"
    bin.install "bin/uiautomatorviewer"
  end
  
  test do
    system "sdkmanager --version"
  end
end
