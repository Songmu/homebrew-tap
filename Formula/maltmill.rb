class Maltmill < Formula
  version '1.0.1'
  homepage 'https://github.com/Songmu/maltmill'
  url "https://github.com/Songmu/maltmill/releases/download/v1.0.1/maltmill_v1.0.1_darwin_amd64.zip"
  sha256 '205a6f029aff401897e2f352d6512ac8ebe6e210863395917eb0b6273c022c66'
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
