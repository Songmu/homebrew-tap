class Godzil < Formula
  version '0.3.0'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.3.0/godzil_v0.3.0_darwin_amd64.zip"
  sha256 '16d22de7c1eef5551ea292c5e21706d5688e6b8b6b2e12870160be7b649265fe'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
