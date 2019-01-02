class Tmclean < Formula
  version '0.0.2'
  homepage 'https://github.com/Songmu/App-tmclean'
  url "https://github.com/Songmu/App-tmclean/releases/download/v0.0.2/tmclean_v0.0.2_darwin_amd64.zip"
  sha256 'd7245fbd573ee92d68f3d74062a3d258e9963efd7ae185e96f91026e26386787'
  head 'https://github.com/Songmu/App-tmclean.git'

  def install
    bin.install 'tmclean'
  end
end
