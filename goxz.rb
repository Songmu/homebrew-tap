HOMEBREW_GOXZ_VERSION='0.0.1'
class Goxz < Formula
  homepage 'https://github.com/Songmu/goxz'
  version HOMEBREW_GOXZ_VERSION
  url "https://github.com/Songmu/goxz/releases/download/v#{HOMEBREW_GOXZ_VERSION}/goxz_v#{HOMEBREW_GOXZ_VERSION}_darwin_amd64.zip"
  sha256 'dda16c446125e476f972ee2a629f75d5e8a23dc41429b3c57c38d2c0601bcf1a'

  head do
    url 'https://github.com/Songmu/goxz.git'
    depends_on 'go' => :build
    depends_on 'hg' => :build
  end

  def install
    if build.head?
      ENV['GOPATH'] = buildpath
      mkdir_p buildpath/'src/github.com/Songmu'
      ln_s buildpath, buildpath/'src/github.com/Songmu/goxz'
      system 'go', 'get', '-d', '-v', '.'
      system 'go', 'build', '-o', 'goxz', './cmd/goxz/'
    end
    bin.install 'goxz'
  end

  test do
    system 'goxz', 'version'
  end
end
