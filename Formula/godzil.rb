class Godzil < Formula
  version '0.1.0'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.1.0/godzil_v0.1.0_darwin_amd64.zip"
  sha256 '7345efb5828352ee26f59e12c895c12c746a48b169cd5b0606b045a1276223a1'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
