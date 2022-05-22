class Godzil < Formula
  version '0.20.8'
  homepage 'https://github.com/Songmu/godzil'
  url "https://github.com/Songmu/godzil/releases/download/v0.20.8/godzil_v0.20.8_darwin_amd64.zip"
  sha256 'f26b01c6fa6f796c54ed11542918774dff407c0ef92c27ab07238afdd38acfe4'
  head 'https://github.com/Songmu/godzil.git'

  def install
    bin.install 'godzil'
  end
end
