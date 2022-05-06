class Godzil < Formula
  version '0.20.7'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.20.7/godzil_v0.20.7_darwin_amd64.zip"
  sha256 '9683ff9205239cc648e9ffd50a7ec7b5a7ea1db8e9a61b10cca1db3b48995878'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
