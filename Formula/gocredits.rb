class Gocredits < Formula
  version '0.1.0'
  homepage 'https://github.com/Songmu/gocredits'
  url "https://github.com/Songmu/gocredits/releases/download/v0.1.0/gocredits_v0.1.0_darwin_amd64.zip"
  sha256 '5c966e6788f899670d45f3e196173fd67b35686c10f48854737ec677069c309a'
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
