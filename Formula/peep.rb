class Peep < Formula
  version '0.0.2'
  homepage 'https://github.com/Songmu/peep'
  url "https://github.com/Songmu/peep/releases/download/v0.0.2/peep_v0.0.2_darwin_amd64.zip"
  sha256 '496e2771273afab91b28bcede78c9010531f01ad853221be49f9ca2e1c52407a'
  head 'https://github.com/Songmu/peep.git'

  def install
    bin.install 'peep'
    bin.install 'peep-notify'
  end
end
