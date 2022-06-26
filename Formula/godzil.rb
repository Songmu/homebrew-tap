class Godzil < Formula
  version '0.20.11'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.20.11/godzil_v0.20.11_darwin_amd64.zip"
  sha256 '5d18bb008ed073f62c89f8cc375c3e588bd30ed856d4f57c2442516904fbeecb'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
