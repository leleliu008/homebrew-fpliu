class Uctags < Formula
  desc     "A maintained ctags implementation"
  homepage "https://ctags.io/"
  head     "https://github.com/universal-ctags/ctags.git", branch: "master"
  url      "https://github.com/universal-ctags/ctags/releases/download/v6.1.0/universal-ctags-6.1.0.tar.gz"
  sha256   "fa3bafbd0dab0373c0c1788c79451bad4eed2095ad292a8dd46cc1ae6997b2c5"
  license  "GPL-2.0-only"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "pkg-config" => :build

  depends_on "jansson"
  depends_on "libyaml"
  depends_on "libxml2"
  depends_on "pcre2"

  def install
    system "./autogen.sh"
    system "./configure", "--program-prefix=u", *std_configure_args
    system "make"
    system "make", "install"
  end

  test do
    (testpath/"test.c").write <<~EOS
      #include <stdio.h>
      #include <stdlib.h>

      void func()
      {
        printf("Hello World!");
      }

      int main()
      {
        func();
        return 0;
      }
    EOS
    system bin/"ctags", "-R", "."
    assert_match(/func.*test\.c/, File.read("tags"))
  end
end
