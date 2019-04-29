class Godzil < Formula
  version '0.4.0'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.4.0/godzil_v0.4.0_darwin_amd64.zip"
  sha256 'bd1422700fa2f2b5b1ea098a55f85436bd1d946bc164838106d08f6482d5ceff'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
