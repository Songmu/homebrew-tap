class Ecschedule < Formula
  version '0.3.1'
  homepage 'https://github.com/Songmu/ecschedule'
  if OS.mac?
    url "https://github.com/Songmu/ecschedule/releases/download/v0.3.1/ecschedule_v0.3.1_darwin_amd64.zip"
    sha256 'b15862288c31443063b68ab23380328614d82529252b645134580ae803b09b4c'
  end
  if OS.linux?
    url "https://github.com/Songmu/ecschedule/releases/download/v0.3.1/ecschedule_v0.3.1_linux_amd64.tar.gz"
    sha256 '899f9503c8b722a856415d262facb80436897100adcfdf7432ecafa98bfa4b5e'
  end
  head 'https://github.com/Songmu/ecschedule.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'ecschedule'
  end
end
