class Ghg < Formula

  version '0.1.4'
  homepage 'https://github.com/Songmu/ghg'
  url "https://github.com/Songmu/ghg/releases/download/v#{version}/ghg_v#{version}_darwin_amd64.zip"
  sha256 '9f24d3c5f54bb536ceb7046b37b433f66a51120ec1dfd0e33486233715776f10'

  head do
    url 'https://github.com/Songmu/ghg.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      ENV['GOPATH'] = buildpath
      mkdir_p buildpath/'src/github.com/Songmu'
      ln_s buildpath, buildpath/'src/github.com/Songmu/ghg'
      system 'go', 'get', '-d', '-v', '.'
      system 'go', 'build', './cmd/ghg'
    end
    bin.install 'ghg'
  end
end
