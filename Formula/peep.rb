class Peep < Formula
  version '0.1.2'
  homepage 'https://github.com/Songmu/peep'
  url "https://github.com/Songmu/peep/releases/download/v0.1.2/peep_v0.1.2_darwin_amd64.zip"
  sha256 '58cb4a3959b5ea77bd46bbd3477dd537b3941dbc1c1f882b69df370645b6ccc2'
  head 'https://github.com/Songmu/peep.git'

  def install
    bin.install 'peep'
    bin.install 'peep-notify'
  end
end
