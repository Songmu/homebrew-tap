class Godzil < Formula
  version '0.9.0'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.9.0/godzil_v0.9.0_darwin_amd64.zip"
  sha256 '56507733e8e3656905226bcf6e221ebc07d17fec5549b710761fe89de2f19c5b'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
