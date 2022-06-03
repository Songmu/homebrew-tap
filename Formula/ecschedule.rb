class Ecschedule < Formula
  version '0.6.0'
  homepage 'https://github.com/Songmu/ecschedule'
  if OS.mac?
    url "https://github.com/Songmu/ecschedule/releases/download/v0.4.0/ecschedule_v0.4.0_darwin_amd64.zip"
    sha256 '03c0a99ec335d28b0c6b609e356b660eab0bef6fd40329d1aab9671173e7c388'
  end
  if OS.linux?
    url "https://github.com/Songmu/ecschedule/releases/download/v0.6.0/ecschedule_v0.6.0_linux_amd64.tar.gz"
    sha256 '60ddc234137a79a08b5199ec1c3f3a888ea983ea78453eab9b758fbac57bbfa8'
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
