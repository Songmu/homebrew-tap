class Tmclean < Formula
  version '0.0.1'
  homepage 'https://github.com/Songmu/App-tmclean'
  url "https://github.com/Songmu/App-tmclean/releases/download/v0.0.1/tmclean_v0.0.1_darwin_amd64.zip"
  sha256 '6ff205f6e53682cc406aca7a13a0fc00d12909efbc7293119b2cb5695c19392c'
  head 'https://github.com/Songmu/App-tmclean.git'

  def install
    bin.install 'tmclean'
  end
end
