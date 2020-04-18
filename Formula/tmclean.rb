class Tmclean < Formula
  version '0.0.4'
  homepage 'https://github.com/Songmu/App-tmclean'
  url "https://github.com/Songmu/App-tmclean/releases/download/v0.0.4/tmclean_v0.0.4_darwin_amd64.zip"
  sha256 '9ccf2dec9fd0b68b7001abea96ff9b9a3a2cdd3552685b2c87d2441d410c4b90'
  head 'https://github.com/Songmu/App-tmclean.git'

  def install
    bin.install 'tmclean'
  end
end
