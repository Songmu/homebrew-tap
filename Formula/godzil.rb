class Godzil < Formula
  version '0.20.10'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.20.10/godzil_v0.20.10_darwin_amd64.zip"
  sha256 '2ae7384743fa91186049c6a45188b8d6dffb3d3cef6ce947e2b5168a6fb56617'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
