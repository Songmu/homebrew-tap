class Kibelasync < Formula
  version '0.0.7'
  homepage 'https://github.com/Songmu/kibelasync'
  url "https://github.com/Songmu/kibelasync/releases/download/v0.0.7/kibelasync_v0.0.7_darwin_amd64.zip"
  sha256 '5e0a59ee61c2de85fc70af3c804f1f9e5bd510932042eba8402100548380b589'
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
