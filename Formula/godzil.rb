class Godzil < Formula
  version '0.6.6'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.6.6/godzil_v0.6.6_darwin_amd64.zip"
  sha256 'b67088f1a253834b1c2471e7aa894022985acb73151c688607fc56d117507fa0'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
