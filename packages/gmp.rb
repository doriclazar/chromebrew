require 'package'

class Gmp < Package
  version "5.1.2"
  binary_url ({
    armv7l: "https://dl.dropboxusercontent.com/s/kut6emhlda9pbc9/dummy-1.0.0-chromeos-armv7l.tar.gz",
    i686: "https://dl.dropboxusercontent.com/s/9cwila1kaomsyl2/gmp-5.1.2-chromeos-i686.tar.gz?token_hash=AAHO9VxBpvXU2GPWBwimsp4hL8DADIItfNnIaFbfcyynMg&dl=1",
    x86_64: "https://dl.dropboxusercontent.com/s/zp1mw0l93jcg35e/gmp-5.1.3-chromeos-x86_64.tar.gz?token_hash=AAHa75_Uu5zFQlbQUbse19d_vhIAmEnZ8bYpshE6giSXGw&dl=1"
  })
  binary_sha1 ({
    armv7l: "049db60338a74d798e72afabe05097f3a4c4f7cd",
    i686: "b03b9508463588bfe9d09303c0725068cddd8810",
    x86_64: "2aee1fee1e4b98261127a4c73f3f88670f1c8162"
  })
end
