class Godzil < Formula
  version '0.2.4'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.2.4/godzil_v0.2.4_darwin_amd64.zip"
  sha256 '2bde394b42020914eb67d8112cf2493f5605dafcd05cf499a5cb5a1cdac5d15a'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
