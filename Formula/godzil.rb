class Godzil < Formula
  version '0.20.5'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.20.5/godzil_v0.20.5_darwin_amd64.zip"
  sha256 'fc5d346b6120873b80aa46227e66b7c5a37dce45c7664258ad46eade5589da4b'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
