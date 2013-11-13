require 'formula'

class Tmv < Formula
  homepage 'https://tmv-cpp.googlecode.com'
  url 'https://tmv-cpp.googlecode.com/files/tmv0.71.tar.gz'
  sha1 'd407748ff4f6a0689edca006b070ff883ec59bbe'

  depends_on 'scons' => :build

  def install
    # basic scons installation
    # there are a few options we could offer
    # but none seem necessary.
    system "scons", "PREFIX=#{prefix}", "install"
  end

  def test
    # check that the correct main program
    # which just tells us the version numner
    # was installed
    version = `tmv-version`.strip()
    version == '0.71'
  end
end
