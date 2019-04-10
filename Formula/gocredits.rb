class Gocredits < Formula
  version '0.0.2'
  homepage 'https://github.com/Songmu/gocredits'
  url "https://github.com/Songmu/gocredits/releases/download/v0.0.2/gocredits_v0.0.2_darwin_amd64.zip"
  sha256 'fac0db4a71886aeb063b5a2869d3df7e53a8124c69cfd8d2bf11f57845675334'
  head 'https://github.com/Songmu/gocredits.git'

  head do
    depands_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gocredits'
  end
end
