class Kibelasync < Formula
  version '0.0.3'
  homepage 'https://github.com/Songmu/kibelasync'
  url "https://github.com/Songmu/kibelasync/releases/download/v0.0.3/kibelasync_v0.0.3_darwin_amd64.zip"
  sha256 'fbbcc3759a4fe74f6fe3488fe6c7f23b6a14a6dcd676830788bdd0ff8e1b9e6b'
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
