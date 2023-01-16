class Ghg < Formula

  version '0.3.0'
  homepage 'https://github.com/Songmu/ghg'
  url "https://github.com/Songmu/ghg/releases/download/v#{version}/ghg_v#{version}_darwin_amd64.zip"
  sha256 'be12578b556f09add576e57c6ee39ec611edbcd534cfbf7144546e20c7c973aa'

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
