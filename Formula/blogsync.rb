class Blogsync < Formula
  version '0.11.0'
  homepage 'https://github.com/motemen/blogsync'
  url "https://github.com/x-motemen/blogsync/releases/download/v0.11.0/blogsync_v0.11.0_darwin_amd64.zip"
  sha256 '494d99c21499b7408a8df92df8755fab34183e934c5dc25e229523b892b9c076'
  head 'https://github.com/motemen/blogsync.git'

  def install
    bin.install 'blogsync'
  end
end
