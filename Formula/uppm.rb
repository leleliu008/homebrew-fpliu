class Uppm < Formula
  desc     "Universal Prebuild Package Manager for Unix-like systems"
  homepage "https://github.com/leleliu008/uppm"
  head     "https://github.com/leleliu008/uppm.git", branch: "master"
  url      "https://github.com/leleliu008/uppm.git", revision: "9ad65b8e827eea6e71e3e74c1b11fb0216bdce6d"
  version  "0.15.4"
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
    system "#{bin}/uppm", "--help"
  end
end
