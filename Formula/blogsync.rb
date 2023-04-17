class Blogsync < Formula
  version '0.13.5'
  homepage 'https://github.com/motemen/blogsync'
  url "https://github.com/x-motemen/blogsync/releases/download/v0.13.5/blogsync_v0.13.5_darwin_amd64.zip"
  sha256 '70054374849aa2b14149d5312ec1f8582bb0282b8591f46ea01df1f2d8813455'
  head 'https://github.com/motemen/blogsync.git'

  def install
    bin.install 'blogsync'
  end
end
