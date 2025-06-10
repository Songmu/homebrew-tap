class Ghg < Formula

  version '0.3.2'
  homepage 'https://github.com/Songmu/ghg'
  url "https://github.com/Songmu/ghg/releases/download/v#{version}/ghg_v#{version}_darwin_amd64.zip"
  sha256 '4d9b45a4b38b185b3809ac8192f653848bd0a99e4d86e7c29aac60951f178bf7'

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
