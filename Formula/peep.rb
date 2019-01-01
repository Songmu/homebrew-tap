class Peep < Formula
  version '0.1.0'
  homepage 'https://github.com/Songmu/peep'
  url "https://github.com/Songmu/peep/releases/download/v0.1.0/peep_v0.1.0_darwin_amd64.zip"
  sha256 '0ac2ab34b3dd4feb65a032d1d70f033cd1e0ab8639de18842373ed8e454686f1'
  head 'https://github.com/Songmu/peep.git'

  def install
    bin.install 'peep'
    bin.install 'peep-notify'
  end
end
