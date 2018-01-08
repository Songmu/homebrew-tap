class Ghg < Formula

  version '0.1.2'
  homepage 'https://github.com/Songmu/ghg'
  url "https://github.com/Songmu/ghg/releases/download/v#{version}/ghg_v#{version}_darwin_amd64.zip"
  sha256 'c318863ecf7838412e58ca5e7553ad7818dc2d4f319577d4b913dc3e81968c0f'

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
