HOMEBREW_GHG_VERSION='0.1.0'
class Ghg < Formula
  homepage 'https://github.com/Songmu/ghg'
  version HOMEBREW_GHG_VERSION
  url "https://github.com/Songmu/ghg/releases/download/v#{HOMEBREW_GHG_VERSION}/ghg_darwin_amd64.zip"
  sha256 'd50e40799e43f5c1b1b9a651ad5c30df66d32af78a5280b32f8c12b54e7cf2c2'

  head do
    url 'https://github.com/Songmu/ghg.git'
    depends_on 'go' => :build
    depends_on 'hg' => :build
  end

  def install
    if build.head?
      ENV['GOPATH'] = buildpath
      mkdir_p buildpath/'src/github.com/Songmu'
      ln_s buildpath, buildpath/'src/github.com/Songmu/ghg'
      system 'go', 'get', '-d', '-v', '.'
      system 'go', 'build', '-o', 'ghg', './cmd/ghg/'
    end
    bin.install 'ghg'
  end

  test do
    system 'ghg', 'version'
  end
end
