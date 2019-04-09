class Godzil < Formula
  version '0.2.2'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.2.2/godzil_v0.2.2_darwin_amd64.zip"
  sha256 '1a0a6d66503d3775a1185b3405310dab731b0820d5796997f6ba8fee306f89d3'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
