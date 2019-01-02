class Tmclean < Formula
  version '0.0.3'
  homepage 'https://github.com/Songmu/App-tmclean'
  url "https://github.com/Songmu/App-tmclean/releases/download/v0.0.3/tmclean_v0.0.3_darwin_amd64.zip"
  sha256 'e41f392f409ea6d2d95e9391c90b3711d7d5404977b99b4d0ca71617de5d69c1'
  head 'https://github.com/Songmu/App-tmclean.git'

  def install
    bin.install 'tmclean'
  end
end
