class Blogsync < Formula
  version '0.13.4'
  homepage 'https://github.com/motemen/blogsync'
  url "https://github.com/x-motemen/blogsync/releases/download/v0.13.4/blogsync_v0.13.4_darwin_amd64.zip"
  sha256 'f90d33fff1d36a7d8351e426dc2187b6233ab718e2ecca8affe68884db4ae59d'
  head 'https://github.com/motemen/blogsync.git'

  def install
    bin.install 'blogsync'
  end
end
