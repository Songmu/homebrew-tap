class Godzil < Formula
  version '0.8.0'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.8.0/godzil_v0.8.0_darwin_amd64.zip"
  sha256 'af997b7b2dd549dbe94cb578333064bddaad07abdcd4e07f56937960540e276d'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
