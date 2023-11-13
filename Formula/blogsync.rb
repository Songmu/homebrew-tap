class Blogsync < Formula
  version '0.20.1'
  homepage 'https://github.com/motemen/blogsync'
  url "https://github.com/x-motemen/blogsync/releases/download/v0.20.1/blogsync_v0.20.1_darwin_amd64.zip"
  sha256 '1a0fafb7037fecc613df038670444765dc476107474103eb643987372a8c1820'
  head 'https://github.com/motemen/blogsync.git'

  def install
    bin.install 'blogsync'
  end
end
