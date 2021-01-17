class Adoptopenjdk8 < Formula
  desc     "Adopt OpenJDK version 8" 
  homepage "https://adoptopenjdk.net"
  version  "8u275b01_openj9-0.23.0"
 
  #https://mirrors.cnnic.cn/AdoptOpenJDK/8/jdk/x64 
  on_linux do
    url "http://mirrors.cnnic.cn/AdoptOpenJDK/8/jdk/x64/linux/OpenJDK8U-jdk_x64_linux_openj9_8u275b01_openj9-0.23.0.tar.gz"
    sha256 "8bb74ff7ab2f64ced23212ee0520295c01b6f2d7558fd6e488a8ca795ced1ebd"
  end
  
  on_macos do
    url "http://mirrors.cnnic.cn/AdoptOpenJDK/8/jdk/x64/mac/OpenJDK8U-jdk_x64_mac_openj9_8u275b01_openj9-0.23.0.tar.gz"
    sha256 "0e19282fe1dae272f1383f726cc6fc70d77816bebe07e0959ac2c9b9b711f709"
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
