class Kibelasync < Formula
  version '0.0.2'
  homepage 'https://github.com/Songmu/kibelasync'
  url "https://github.com/Songmu/kibelasync/releases/download/v0.0.2/kibelasync_v0.0.2_darwin_amd64.zip"
  sha256 'eef4cd01feff5d45bd471272a1ea06cb07b0dc3f1b38675bbad8072cc6ff52ea'
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
