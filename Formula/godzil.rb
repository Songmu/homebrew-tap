class Godzil < Formula
  version '0.1.3'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.1.3/godzil_v0.1.3_darwin_amd64.zip"
  sha256 '1694e1473b75c14a19191f37d97c410e636977a610f693803ba0d72690e9c762'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
