class Adoptopenjdk8 < Formula
  desc     "Adopt OpenJDK version 8" 
  homepage "https://adoptopenjdk.net"
  version  "jdk8u252-b09_openj9-0.20.0"
 
  #https://mirrors.cnnic.cn/AdoptOpenJDK/8/jdk/x64 
  on_linux do
    url "http://mirrors.cnnic.cn/AdoptOpenJDK/8/jdk/x64/linux/OpenJDK8U-jdk_x64_linux_openj9_8u252b09_openj9-0.20.0.tar.gz"
    sha256 "910ae847109a6dd1b6cf69baa7615ea2cce8cff787e5a9349a5331ce7604f3a5"
  end
  
  on_macos do
    url "http://mirrors.cnnic.cn/AdoptOpenJDK/8/jdk/x64/mac/OpenJDK8U-jdk_x64_mac_openj9_8u252b09_openj9-0.20.0.tar.gz"
    sha256 "f522061a23290bce3423e49025a95b6e78d6f30e2741817e83c8fdba4c0c4ae7"
  end
  
  def install
    system "cp -r * #{prefix}"
  end
  
  def caveats
    <<~EOS
      You may want to add following code to your ~/.zshrc or ~/.bashrc or ~/.bash_profile

      export JAVA_HOME=$(brew --prefix adoptopenjdk8)
    EOS
  end

  test do
    system "java -version"
  end
end
