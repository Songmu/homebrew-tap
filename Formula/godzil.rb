class Godzil < Formula
  version '0.0.2'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.0.2/godzil_v0.0.2_darwin_amd64.zip"
  sha256 '03de5d11e849d214148c8301b8be1d9e73829ecdafa8d7c0e3d801212c3f34cb'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
