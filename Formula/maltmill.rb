class Maltmill < Formula
  version '0.2.1'
  homepage 'https://github.com/Songmu/maltmill'
  url "https://github.com/Songmu/maltmill/releases/download/v0.2.1/maltmill_v0.2.1_darwin_amd64.zip"
  sha256 'ab73bc2b6f587b9dc9b203b02ac50f85a2f3fd994989fa10cc08857aa345859a'
  head 'https://github.com/Songmu/maltmill.git'

  def install
    bin.install 'maltmill'
  end
end
