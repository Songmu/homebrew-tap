class Blogsync < Formula
  version '0.10.3'
  homepage 'https://github.com/motemen/blogsync'
  url "https://github.com/motemen/blogsync/releases/download/v0.10.3/blogsync_v0.10.3_darwin_amd64.zip"
  sha256 'f39cdeaf83f400f0e2ac295aacd4bc97b2b2b196a7d869bd4c41cdd2fa1b428d'
  head 'https://github.com/motemen/blogsync.git'

  def install
    bin.install 'blogsync'
  end
end
