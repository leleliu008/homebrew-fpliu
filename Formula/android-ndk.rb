class AndroidNdk < Formula
  desc     "Android Native Develpment Kit"
  homepage "https://developer.android.google.cn/ndk"
  version  "23.1.7779620"

  depends_on "unzip" => :build

  on_linux do
    url    "https://dl.google.com/android/repository/android-ndk-r23b-linux.zip"
    sha256 "c6e97f9c8cfe5b7be0a9e6c15af8e7a179475b7ded23e2d1c1fa0945d6fb4382"
  end

  on_macos do
    url    "https://dl.google.com/android/repository/android-ndk-r23b-darwin.zip"
    sha256 "163ff3bb72306ffa814de35c49819bccae9df10855a4e3fbba52ad4111fcccae"
  end

  def install
    system "cp -r *  #{prefix}"
    system "mkdir bin"

    %w[
      ndk-build
      ndk-stack
      ndk-which
      ndk-lldb
      ndk-gdb
    ].each { |item|
      IO.write "bin/#{item}", <<~EOS
        #!/bin/sh
        exec "#{prefix}/#{item}" "${@}"
      EOS
      bin.install "bin/#{item}"
    }
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
