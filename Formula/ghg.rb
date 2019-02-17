class Ghg < Formula

  version '0.2.0'
  homepage 'https://github.com/Songmu/ghg'
  url "https://github.com/Songmu/ghg/releases/download/v#{version}/ghg_v#{version}_darwin_amd64.zip"
  sha256 '11204c30b7fb5a69c23796a6d8de3191d6c4256aff1e909f0600c12abf2ac80a'

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
