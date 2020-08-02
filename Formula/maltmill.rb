class Maltmill < Formula
  version '0.5.3'
  homepage 'https://github.com/Songmu/maltmill'
  url "https://github.com/Songmu/maltmill/releases/download/v0.5.3/maltmill_v0.5.3_darwin_amd64.zip"
  sha256 'bf4cb377d6da63ad4882e17976b7545744893b3655c3a1e60750a718926a67ff'
  head 'https://github.com/Songmu/maltmill.git'

  head do
    depends_on 'go' => :build
    depends_on 'hg' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'maltmill'
  end
end
