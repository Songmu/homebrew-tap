class Gocredits < Formula
  version '0.0.7'
  homepage 'https://github.com/Songmu/gocredits'
  url "https://github.com/Songmu/gocredits/releases/download/v0.0.7/gocredits_v0.0.7_darwin_amd64.zip"
  sha256 '7b20f5d4597e27851595d45e1934b0a38450569032b9fd633a9c92313e5a0d2e'
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
