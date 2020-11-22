class Ecschedule < Formula
  version '0.3.0'
  homepage 'https://github.com/Songmu/ecschedule'
  if OS.mac?
    url "https://github.com/Songmu/ecschedule/releases/download/v0.3.0/ecschedule_v0.3.0_darwin_amd64.zip"
    sha256 '0eea341422e395952bdb2258df0194cb4addd255917adfd789d85ec2c91421f4'
  end
  if OS.linux?
    url "https://github.com/Songmu/ecschedule/releases/download/v0.3.0/ecschedule_v0.3.0_linux_amd64.tar.gz"
    sha256 'e534457402d4db3926153e69905df43b40fc068a0b54f81d51a41ebeafabee24'
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
