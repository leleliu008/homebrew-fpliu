class AndroidSdk < Formula
  desc     "Android Software Develpment Kit"
  homepage "https://developer.android.google.cn/studio#cmdline-tools"
  version  "6609375"
  
  depends_on "unzip" => :build
  depends_on "adoptopenjdk8"
  
  on_linux do
    url "https://dl.google.com/android/repository/commandlinetools-linux-#{version}_latest.zip"
    sha256 "89f308315e041c93a37a79e0627c47f21d5c5edbe5e80ea8dc0aac8a649e0e92"
  end
  
  on_macos do
    url "https://dl.google.com/android/repository/commandlinetools-mac-#{version}_latest.zip"
    sha256 "2c3822db1c916655223e5ee8ce0fbf6b73d0b99012045c9dc8eaa6a5736c0c55"
  end
  
  def install
    #https://stackoverflow.com/questions/60440509/android-command-line-tools-sdkmanager-always-shows-warning-could-not-create-se
    system "mkdir -p #{prefix}/cmdline-tools/tools"
    system "cp -r *  #{prefix}/cmdline-tools/tools"
    system "printf y | #{prefix}/cmdline-tools/tools/bin/sdkmanager \"platforms;android-28\""
    system "printf y | #{prefix}/cmdline-tools/tools/bin/sdkmanager \"platform-tools\""
    system "printf y | #{prefix}/cmdline-tools/tools/bin/sdkmanager \"build-tools;28.0.3\""
  end
  
  def caveats
    <<~EOS
      You may want to add following code to your ~/.zshrc or ~/.bashrc or ~/.bash_profile

      export ANDROID_HOME=$(brew --prefix android-sdk)
      
      PATH=$PATH:$ANDROID_HOME/cmdline-tools/tools/bin
      PATH=$PATH:$ANDROID_HOME/platform-tools
      export PATH=$PATH:$ANDROID_HOME/build-tools/28.0.3
    EOS
  end

  test do
    system "sdkmanager --version"
  end
end
