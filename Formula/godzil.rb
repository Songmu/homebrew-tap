class Godzil < Formula
  version '0.5.0'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.5.0/godzil_v0.5.0_darwin_amd64.zip"
  sha256 '074a0f070c128ac63a99117fa738f40d1af6be860c912fe60eb637dfac6c112e'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
