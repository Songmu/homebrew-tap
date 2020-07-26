class Kibelasync < Formula
  version '0.1.0'
  homepage 'https://github.com/Songmu/kibelasync'
  url "https://github.com/Songmu/kibelasync/releases/download/v0.1.0/kibelasync_v0.1.0_darwin_amd64.zip"
  sha256 '758f07a1073c6924a4c09b167b413b915e623c342920092d655a7eb21cdd443b'
  head 'https://github.com/Songmu/kibelasync.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'kibelasync'
  end
end
