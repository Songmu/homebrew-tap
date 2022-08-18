class Godzil < Formula
  version '0.20.12'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.20.12/godzil_v0.20.12_darwin_amd64.zip"
  sha256 '0fc5716e6bfab1ae23af16673a6f6ccb3add489602e5bbf249a2741c2069afe1'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
