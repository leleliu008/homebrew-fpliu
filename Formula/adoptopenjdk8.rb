class Adoptopenjdk8 < Formula
  desc     "Adopt OpenJDK version 8" 
  homepage "https://adoptopenjdk.net"
  version  "8u292b10_openj9-0.26.0"
 
  #https://mirrors.cnnic.cn/AdoptOpenJDK/8/jdk/x64 
  on_linux do
    url "http://mirrors.cnnic.cn/AdoptOpenJDK/8/jdk/x64/linux/OpenJDK8U-jdk_x64_linux_openj9_8u292b10_openj9-0.26.0.tar.gz"
    sha256 "06d6c9421778575cf59d50f69b7ac6a7bb237485b3a3c2f89cfb61a056c7b2de"
  end
  
  on_macos do
    url "http://mirrors.cnnic.cn/AdoptOpenJDK/8/jdk/x64/mac/OpenJDK8U-jdk_x64_mac_openj9_8u292b10_openj9-0.26.0.tar.gz"
    sha256 "d262bc226895e80b7e80d61905e65fe043ca0a3e3b930f7b88ddfacb8835e939"
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
