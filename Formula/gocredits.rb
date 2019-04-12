class Gocredits < Formula
  version '0.0.3'
  homepage 'https://github.com/Songmu/gocredits'
  url "https://github.com/Songmu/gocredits/releases/download/v0.0.3/gocredits_v0.0.3_darwin_amd64.zip"
  sha256 '0ccc4c961c71424d9222a2403c560db6e98e4bb0fb8a8a29f6eda39c25b210ca'
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
