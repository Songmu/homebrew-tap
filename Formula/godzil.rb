class Godzil < Formula
  version '0.11.0'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.11.0/godzil_v0.11.0_darwin_amd64.zip"
  sha256 '62ca93dbd13ea9885143ae616d93412fa7446204fae0fd08480b66330ee18798'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
