class Maltmill < Formula
  version '0.4.1'
  homepage 'https://github.com/Songmu/maltmill'
  url "https://github.com/Songmu/maltmill/releases/download/v0.4.1/maltmill_v0.4.1_darwin_amd64.zip"
  sha256 'ecfa5b246cd3a1a4f37cd4f5be6370baadb24a1256f67c1e213c1b228ee5170f'
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
