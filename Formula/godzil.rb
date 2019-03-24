class Godzil < Formula
  version '0.2.1'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.2.1/godzil_v0.2.1_darwin_amd64.zip"
  sha256 'd8fba8cd21f29268dc35d7f14b86be11f1518700c33e70f72837d3850666fe0e'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
