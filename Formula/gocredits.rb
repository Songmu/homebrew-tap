class Gocredits < Formula
  version '0.0.5'
  homepage 'https://github.com/Songmu/gocredits'
  url "https://github.com/Songmu/gocredits/releases/download/v0.0.5/gocredits_v0.0.5_darwin_amd64.zip"
  sha256 '1b2af8622ea88ea084731e6de8e1597452d051f92f876cb8f53caf2a0a3e0dc4'
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
