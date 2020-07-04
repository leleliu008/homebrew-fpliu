class Qihu360jiagubao < Formula
  desc     "奇虎360的Android加固助手"
  homepage "https://jiagu.360.cn"
  url      "https://github.com/leleliu008/360jiagubao-wrapper/releases/download/v3.2.2.4/360jiagubao-3.2.2.4.tar.gz"
  sha256   "69dce74f33b62687d26fb467db5177d86a2a3221e1c2e14aca5d68be00662e04"

  resource "additional_files" do
    on_linux do
      url    "https://down.360safe.com/360Jiagu/360jiagubao_linux_64.zip"
      sha256 "374926730ddaa10a99f2261793a55906b19466aa2f3b5bc68a85137ac80fe261"
    end
    
    on_macos do
      url    "https://down.360safe.com/360Jiagu/360jiagubao_mac.zip"
      sha256 "7eac4e28e2ed60ee9a9f0c6c8c44a4d4945a657524fef409ee4c9139202026e6"
    end
  end

  def install
    bin.install "bin/360jiagubao"
    zsh_completion.install "zsh-completion/_360jiagubao" => "_360jiagubao"
    resource("additional_files").stage { lib.install "jiagu" }
  end

  test do
    system "#{bin}/360jiagubao", "-version"
  end
end
