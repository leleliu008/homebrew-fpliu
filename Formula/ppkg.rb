class Ppkg < Formula
  desc     "A portable package manager for Unix-like system"
  homepage "https://github.com/leleliu008/ppkg"
  head     "https://github.com/leleliu008/ppkg.git", branch: "c"
  url      "https://github.com/leleliu008/ppkg.git", tag: "0.1000.2", revision: "2adc1560343672f9cd515231a4ffedba02f04ed5"
  license  "Apache-2.0"

  depends_on "cmake" => :build
  depends_on "ninja" => :build
  depends_on "pkg-config" => :build

  depends_on "curl"
  depends_on "jansson"
  depends_on "libyaml"
  depends_on "libgit2"
  depends_on "libarchive"

  def install
    system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    system "cmake", "--build",   "build"
    system "cmake", "--install", "build"
  end

  test do
    system "#{bin}/ppkg", "--help"
  end
end
