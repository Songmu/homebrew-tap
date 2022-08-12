class Blogsync < Formula
  version '0.12.1'
  homepage 'https://github.com/motemen/blogsync'
  url "https://github.com/x-motemen/blogsync/releases/download/v0.12.1/blogsync_v0.12.1_darwin_amd64.zip"
  sha256 'f132c61c99bce2c3840b70165083af6693691d0ed7cb4da3599ff3c7b85775f9'
  head 'https://github.com/motemen/blogsync.git'

  def install
    bin.install 'blogsync'
  end
end
