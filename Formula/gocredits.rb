class Gocredits < Formula
  version '0.0.6'
  homepage 'https://github.com/Songmu/gocredits'
  url "https://github.com/Songmu/gocredits/releases/download/v0.0.6/gocredits_v0.0.6_darwin_amd64.zip"
  sha256 '1b79eec16162905d8ff357d9133f640b308c01ada2b8fbef67ce1556c4f0f19c'
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
