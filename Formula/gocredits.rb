class Gocredits < Formula
  version '0.2.0'
  homepage 'https://github.com/Songmu/gocredits'
  url "https://github.com/Songmu/gocredits/releases/download/v0.2.0/gocredits_v0.2.0_darwin_amd64.zip"
  sha256 '15657779dd182af82402d2c7c151c8b78a9080c9d4c93fc3d769f42902c166dc'
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
