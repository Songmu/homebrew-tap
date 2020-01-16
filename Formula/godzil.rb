class Godzil < Formula
  version '0.8.4'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.8.4/godzil_v0.8.4_darwin_amd64.zip"
  sha256 'f3741093f7dbec8010f4e4fc40697ee44cef1186ca7d614ceaaf0a578675d1b7'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
