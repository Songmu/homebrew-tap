class Godzil < Formula
  version '0.8.2'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.8.2/godzil_v0.8.2_darwin_amd64.zip"
  sha256 '61b188c2ac054484cfc1fd75a6f242e54a623080b5b068d914b5310a01f1d92f'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
