class Godzil < Formula
  version '0.20.1'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.20.1/godzil_v0.20.1_darwin_amd64.zip"
  sha256 '511f8c2f51e25026535cb9b404d0f186bde6a260519d104e7afd43a7fbd1fb9a'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
