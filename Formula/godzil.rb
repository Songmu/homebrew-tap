class Godzil < Formula
  version '0.1.1'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.1.1/godzil_v0.1.1_darwin_amd64.zip"
  sha256 '55a39d97a4d53eced34b8df55ab1c79537d0560109f0577405ea9d939dad9bdc'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
