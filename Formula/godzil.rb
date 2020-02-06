class Godzil < Formula
  version '0.8.5'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.8.5/godzil_v0.8.5_darwin_amd64.zip"
  sha256 '32c1839e7ef885796424908c3f61331c8c6011296c9f2bb5655e98a308cb6131'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
