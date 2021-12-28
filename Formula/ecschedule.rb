class Ecschedule < Formula
  version '0.3.2'
  homepage 'https://github.com/Songmu/ecschedule'
  if OS.mac?
    url "https://github.com/Songmu/ecschedule/releases/download/v0.3.2/ecschedule_v0.3.2_darwin_amd64.zip"
    sha256 'd11c09d933ffa87e73ed13f8e66b706586dcbb39048ecf89ae13d33be26a0e52'
  end
  if OS.linux?
    url "https://github.com/Songmu/ecschedule/releases/download/v0.3.2/ecschedule_v0.3.2_linux_amd64.tar.gz"
    sha256 'd1216f731d5ee291e85f214da822e522130eaf7d6bfed91074688765c0cb130f'
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
