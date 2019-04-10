class Godzil < Formula
  version '0.2.3'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.2.3/godzil_v0.2.3_darwin_amd64.zip"
  sha256 'a18ee2636205bf1eaf28d1a0503ba5bd122f2a9e12f4c8e2c5b694cf00492496'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
