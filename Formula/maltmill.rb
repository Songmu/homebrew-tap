class Maltmill < Formula
  version '0.3.1'
  homepage 'https://github.com/Songmu/maltmill'
  url "https://github.com/Songmu/maltmill/releases/download/v0.3.1/maltmill_v0.3.1_darwin_amd64.zip"
  sha256 '0e54aadf6c52348255f0fa85a012825780ad3c662509e347af387c425564641d'
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
