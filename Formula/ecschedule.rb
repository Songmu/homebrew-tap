class ecschedule < Formula
  version '0.2.0'
  homepage 'https://github.com/Songmu/ecschedule'
  if OS.mac?
    url "https://github.com/Songmu/ecschedule/releases/download/v0.2.0/ecschedule_v0.2.0_darwin_amd64.zip"
    sha256 'dbcd769f2d3647055673a5367ba5f9d18d67edbafaeab629ce2c923b6b32d51a'
  end
  if OS.linux?
    url "https://github.com/Songmu/ecschedule/releases/download/v0.2.0/ecschedule_v0.2.0_linux_amd64.tar.gz"
    sha256 '07da37161d64ac7df2bc4e673632ef53c4c8c48070689c3064c2de03a9f643d7'
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
