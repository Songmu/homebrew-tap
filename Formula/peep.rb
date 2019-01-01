class Peep < Formula
  version '0.1.1'
  homepage 'https://github.com/Songmu/peep'
  url "https://github.com/Songmu/peep/releases/download/v0.1.1/peep_v0.1.1_darwin_amd64.zip"
  sha256 '87aa847ac1a5f933189d294eea0d7ab9a5d5eb0a147be440f0c38abd1b185447'
  head 'https://github.com/Songmu/peep.git'

  def install
    bin.install 'peep'
    bin.install 'peep-notify'
  end
end
