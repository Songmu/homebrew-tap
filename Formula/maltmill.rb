class Maltmill < Formula
  version '0.5.8'
  homepage 'https://github.com/Songmu/maltmill'
  url "https://github.com/Songmu/maltmill/releases/download/v0.5.8/maltmill_v0.5.8_darwin_amd64.zip"
  sha256 'f440a986f7d51aff197a11b76ef278733d95c8e1192cac9f8f0c99bb65c4b2d7'
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
