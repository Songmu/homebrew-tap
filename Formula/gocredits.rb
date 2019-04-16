class Gocredits < Formula
  version '0.0.4'
  homepage 'https://github.com/Songmu/gocredits'
  url "https://github.com/Songmu/gocredits/releases/download/v0.0.4/gocredits_v0.0.4_darwin_amd64.zip"
  sha256 '636809cdc2c85ea5d1bba6d87ee2ae7284345648d06596746e64f3681750ea62'
  head 'https://github.com/Songmu/gocredits.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gocredits'
  end
end
