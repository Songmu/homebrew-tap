class Blogsync < Formula
  version '0.10.0'
  homepage 'https://github.com/motemen/blogsync'
  url "https://github.com/motemen/blogsync/releases/download/v0.10.0/blogsync_v0.10.0_darwin_amd64.zip"
  sha256 '40b0fe2521bcbac263288e2a1ed1fe62e3a9997dcb12fa9b502730617e20228b'
  head 'https://github.com/motemen/blogsync.git'

  def install
    bin.install 'blogsync'
  end
end
