class Blogsync < Formula
  version '0.12.0'
  homepage 'https://github.com/motemen/blogsync'
  url "https://github.com/x-motemen/blogsync/releases/download/v0.12.0/blogsync_v0.12.0_darwin_amd64.zip"
  sha256 '9d3fb08dc3c63d0dc6d804476572096bcd1a259ba3ecbd84d5ccb9e238a34958'
  head 'https://github.com/motemen/blogsync.git'

  def install
    bin.install 'blogsync'
  end
end
