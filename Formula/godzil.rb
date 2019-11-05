class Godzil < Formula
  version '0.7.0'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.7.0/godzil_v0.7.0_darwin_amd64.zip"
  sha256 '0884916e1b6a7df43c0b9d7a90c2cb0d42430dd76252a81991230db22a6b9af7'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
