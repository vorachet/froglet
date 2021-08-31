class Froglet < Formula
    homepage "https://github.com/vorachet/froglet"
    url "https://github.com/vorachet/froglet/archive/refs/heads/master.zip"
    sha256 "52126be8cf1bddd7536886e74c053ad7d0ed2aa89b4b630f76785bac21695fcd"
  
    def install
        bin.install "./froglet"
    end

  end