class Blogsync < Formula
  version '0.14.2'
  homepage 'https://github.com/motemen/blogsync'
  url "https://github.com/x-motemen/blogsync/releases/download/v0.14.2/blogsync_v0.14.2_darwin_amd64.zip"
  sha256 '41a091fa2d1b3659d8e6405fe96c3ee52332d35d80e0776b49ee82ebfd3d74e1'
  head 'https://github.com/motemen/blogsync.git'

  def install
    bin.install 'blogsync'
  end
end
