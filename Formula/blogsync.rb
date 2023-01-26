class Blogsync < Formula
  version '0.13.0'
  homepage 'https://github.com/motemen/blogsync'
  url "https://github.com/x-motemen/blogsync/releases/download/v0.13.0/blogsync_v0.13.0_darwin_amd64.zip"
  sha256 'fab44a3945d4e4e179aa09a7d146f2a36ace058d639f2e6942915780c9baa72c'
  head 'https://github.com/motemen/blogsync.git'

  def install
    bin.install 'blogsync'
  end
end
