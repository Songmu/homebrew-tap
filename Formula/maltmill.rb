class Maltmill < Formula
  version '0.3.0'
  homepage 'https://github.com/Songmu/maltmill'
  url "https://github.com/Songmu/maltmill/releases/download/v0.3.0/maltmill_v0.3.0_darwin_amd64.zip"
  sha256 'd7b7017c550d614bf6152b6a1ef493daec71dbd5534f98168a7010bee77961a7'
  head 'https://github.com/Songmu/maltmill.git'

  def install
    bin.install 'maltmill'
  end
end
