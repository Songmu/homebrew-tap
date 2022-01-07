class Godzil < Formula
  version '0.20.6'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.20.6/godzil_v0.20.6_darwin_amd64.zip"
  sha256 '5b1f3a07f828a3d724b6587c5cff8b4f035501757eb7baabdbc618628cdef1d5'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
