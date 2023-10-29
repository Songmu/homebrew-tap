class Blogsync < Formula
  version '0.18.2'
  homepage 'https://github.com/motemen/blogsync'
  url "https://github.com/x-motemen/blogsync/releases/download/v0.18.2/blogsync_v0.18.2_darwin_amd64.zip"
  sha256 '177b17412a36932798323932cd274cc395bbf867b8506155ae6253db8b2adf32'
  head 'https://github.com/motemen/blogsync.git'

  def install
    bin.install 'blogsync'
  end
end
