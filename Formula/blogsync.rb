class Blogsync < Formula
  version '0.19.0'
  homepage 'https://github.com/motemen/blogsync'
  url "https://github.com/x-motemen/blogsync/releases/download/v0.19.0/blogsync_v0.19.0_darwin_amd64.zip"
  sha256 '4eb1baaf5e06a0521599e0ab4cef2a474102407ff9356b378ada31258af3e4f4'
  head 'https://github.com/motemen/blogsync.git'

  def install
    bin.install 'blogsync'
  end
end
