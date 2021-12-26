class Godzil < Formula
  version '0.20.4'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.20.4/godzil_v0.20.4_darwin_amd64.zip"
  sha256 'b0010e5613ea45c01255fd4ff7a20a9df0eb720dff43b0f1d106e379617c71fd'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
