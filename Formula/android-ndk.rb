class AndroidNdk < Formula
  desc     "Android Native Develpment Kit"
  homepage "https://developer.android.google.cn/ndk"
  version  "22.0.7026061"
  
  depends_on "unzip" => :build
  
  on_linux do
    url    "https://dl.google.com/android/repository/android-ndk-r22-linux-x86_64.zip"
    sha256 "d37fc69cd81e5660234a686e20adef39bc0244086e4d66525a40af771c020718"
  end
  
  on_macos do
    url    "https://dl.google.com/android/repository/android-ndk-r22-darwin-x86_64.zip"
    sha256 "14fce4dea7fb3facbc0e3d20270007bffec3ba383aec02e8b0e0dad8d8782892"
  end
  
  def install
    bin.install "ndk-build" "ndk-gdb" "ndk-lldb" "ndk-stack" "ndk-which"
  end
  
  def caveats
    <<~EOS
      You may want to add following code to your ~/.zshrc or ~/.bashrc or ~/.bash_profile

      export ANDROID_NDK_ROOT=$(brew --prefix android-ndk)
    EOS
  end

  test do
    system "ndk-build --version"
  end
end
