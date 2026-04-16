class Blogsync < Formula
  version '0.21.1'
  homepage 'https://github.com/motemen/blogsync'
  url "https://github.com/x-motemen/blogsync/releases/download/v0.21.1/blogsync_v0.21.1_darwin_amd64.zip"
  sha256 '35763c37453853335e2d8d9ba1fce0d4e11f7af59d0f4f4e94c508edbf442f57'
  head 'https://github.com/motemen/blogsync.git'

  def install
    bin.install 'blogsync'
  end
end
