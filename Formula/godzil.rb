class Godzil < Formula
  version '0.10.0'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.10.0/godzil_v0.10.0_darwin_amd64.zip"
  sha256 'c73f9c11dff5ae8fd1744540489408d1de6975a6fd6ab25aa221f61aa662db9d'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
