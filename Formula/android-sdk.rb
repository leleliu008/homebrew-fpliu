class AndroidSdk < Formula
  desc     "Android Software Develpment Kit"
  homepage "https://developer.android.google.cn/studio#cmdline-tools"
  version  "8092744"

  depends_on "unzip" => :build
  depends_on "java"

  on_linux do
    url "https://dl.google.com/android/repository/commandlinetools-linux-#{version}_latest.zip"
    sha256 "d71f75333d79c9c6ef5c39d3456c6c58c613de30e6a751ea0dbd433e8f8b9cbf"
  end

  on_macos do
    url "https://dl.google.com/android/repository/commandlinetools-mac-#{version}_latest.zip"
    sha256 "1de25523d595198d29666f9976eed65d99bbc5e4a3e8e48e5d6c98bb7e9030cc"
  end

  def install
    #https://stackoverflow.com/questions/60440509/android-command-line-tools-sdkmanager-always-shows-warning-could-not-create-se
    system "mkdir -p   #{prefix}/cmdline-tools/tools"
    system "cp -r *    #{prefix}/cmdline-tools/tools"
    system "printf y | #{prefix}/cmdline-tools/tools/bin/sdkmanager \"platforms;android-30\""
    system "printf y | #{prefix}/cmdline-tools/tools/bin/sdkmanager \"platform-tools\""
    system "printf y | #{prefix}/cmdline-tools/tools/bin/sdkmanager \"build-tools;30.0.3\""
  end

  def caveats
    <<~EOS
      You may want to add following code to your ~/.zshrc or ~/.bashrc or ~/.bash_profile

      export ANDROID_HOME=$(brew --prefix android-sdk)

      PATH=$PATH:$ANDROID_HOME/cmdline-tools/tools/bin
      PATH=$PATH:$ANDROID_HOME/platform-tools
      export PATH=$PATH:$ANDROID_HOME/build-tools/30.0.3
    EOS
  end

  test do
    system "sdkmanager --version"
  end
end
