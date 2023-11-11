class Blogsync < Formula
  version '0.20.0'
  homepage 'https://github.com/motemen/blogsync'
  url "https://github.com/x-motemen/blogsync/releases/download/v0.20.0/blogsync_v0.20.0_darwin_amd64.zip"
  sha256 'f325549964f815531217cb9dbf0eae90fd8ff2ab94339f008b8235076b3b0870'
  head 'https://github.com/motemen/blogsync.git'

  def install
    bin.install 'blogsync'
  end
end
