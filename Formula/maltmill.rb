class Maltmill < Formula
  version '0.5.1'
  homepage 'https://github.com/Songmu/maltmill'
  url "https://github.com/Songmu/maltmill/releases/download/v0.5.1/maltmill_v0.5.1_darwin_amd64.zip"
  sha256 '50316350b5fad6f304bb825624d8f2a2d7f8258161c3720f6b92a355addae47e'
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
