require 'package'

class Diffutils < Package
  version '3.3'
  source_url 'ftp://ftp.gnu.org/gnu/diffutils/diffutils-3.3.tar.xz'
  source_sha1 '6463cce7d3eb73489996baefd0e4425928ecd61e'

  # arm has 3.3 diffutils in system, so leave it as is
  binary_url({
    armv7l: "https://dl.dropboxusercontent.com/s/kut6emhlda9pbc9/dummy-1.0.0-chromeos-armv7l.tar.gz",
  })
  binary_sha1({
    armv7l: "049db60338a74d798e72afabe05097f3a4c4f7cd",
  })

  depends_on "libsigsegv"

  def self.build
    system "sed -i -e '/gets is a/d' lib/stdio.in.h"  # fixes an error, credit to http://www.linuxfromscratch.org/lfs/view/7.3/chapter05/diffutils.html
    system "sed -i 's:= @mkdir_p@:= /bin/mkdir -p:' po/Makefile.in.in" # http://www.linuxfromscratch.org/lfs/view/development/chapter06/diffutils.html

    system "./configure --prefix=/usr/local"
    system "make"
  end

  def self.install
    system "make", "DESTDIR=#{CREW_DEST_DIR}", "install"
  end
end
