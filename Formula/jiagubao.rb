class Jiagubao < Formula
  desc     "奇虎360的Android加固助手"
  homepage "https://jiagu.360.cn"
  url      "https://github.com/leleliu008/jiagubao-wrapper/releases/download/v2022.05.04/jiagubao-2022.05.04.tar.gz"
  sha256   "b9d3a07e50a5d95be1d12529fb7a175370d124ba81e9f3e9af3b7fd3c3bd3688"

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
    bin.install "bin/jiagubao"
    zsh_completion.install "zsh-completion/_jiagubao" => "_jiagubao"
    resource("additional_files").stage { lib.install "jiagu" }
  end

  test do
    system "#{bin}/jiagubao", "-version"
  end
end
