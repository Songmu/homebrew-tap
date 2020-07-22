class Kibelasync < Formula
  version '0.0.4'
  homepage 'https://github.com/Songmu/kibelasync'
  url "https://github.com/Songmu/kibelasync/releases/download/v0.0.4/kibelasync_v0.0.4_darwin_amd64.zip"
  sha256 'dfbda77e33b8d2cf3bb2bc2f52fffd97aec2d9c7921f8968a81af363c115804d'
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
