class Godzil < Formula
  version '0.2.0'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.2.0/godzil_v0.2.0_darwin_amd64.zip"
  sha256 '1ab72ec601a7f53038987245a36d3fd0950b28d9d2ed0f19aa08a7e8a0092930'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
