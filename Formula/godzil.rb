class Godzil < Formula
  version '0.20.2'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.20.2/godzil_v0.20.2_darwin_amd64.zip"
  sha256 'c58136453ecbaf462fbcdb50b01844df985e58bc3997085f42fc698bcc08edfd'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
