class Ecsched < Formula
  version '0.1.1'
  homepage 'https://github.com/Songmu/ecsched'
  if OS.mac?
    url "https://github.com/Songmu/ecsched/releases/download/v0.1.1/ecsched_v0.1.1_darwin_amd64.zip"
    sha256 'f280ca5e10bda9ddaa63bbb09d820dfcee462b5fbc1c8d43e033b708742c2557'
  end
  if OS.linux?
    url "https://github.com/Songmu/ecsched/releases/download/v0.1.1/ecsched_v0.1.1_linux_amd64.tar.gz"
    sha256 '9c5ce96c8373eebb7d2c2d3fa970892235704b328b6db2200974f43d8d3730b4'
  end
  head 'https://github.com/Songmu/ecsched.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'ecsched'
  end
end
