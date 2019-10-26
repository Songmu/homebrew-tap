class Godzil < Formula
  version '0.6.2'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.6.2/godzil_v0.6.2_darwin_amd64.zip"
  sha256 'ee61cc24ee793ff2597d18234f816ea6cf19af6e2ea726ad0d987ccac4bba6ee'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
