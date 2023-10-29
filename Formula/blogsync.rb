class Blogsync < Formula
  version '0.18.1'
  homepage 'https://github.com/motemen/blogsync'
  url "https://github.com/x-motemen/blogsync/releases/download/v0.18.1/blogsync_v0.18.1_darwin_amd64.zip"
  sha256 '944d8600af5ac150e376bf7b3cc500fd5acefaf3b8fc49773644288620d2901d'
  head 'https://github.com/motemen/blogsync.git'

  def install
    bin.install 'blogsync'
  end
end
