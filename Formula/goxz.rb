class Goxz < Formula
  name = 'goxz'
  version '0.4.1'
  homepage "https://github.com/Songmu/#{name}"
  url "https://github.com/Songmu/#{name}/releases/download/v#{version}/#{name}_v#{version}_darwin_amd64.zip"
  sha256 'ee35ce73e73e428694b49492720c7ec6b9e90195cef640e10bd819058a7da5ea'

  head do
    url "https://github.com/Songmu/#{name}.git"
    depends_on 'go' => :build
  end

  def install
    if build.head?
      gobin = buildpath/"bin"
      ENV.update({
        'GOPATH' => buildpath,
        'PATH'   => "#{gobin}:#{ENV['PATH']}",
      })
      mkdir_p buildpath/'src/github.com/Songmu'
      ln_s buildpath, buildpath/"src/github.com/Songmu/#{name}"
      system 'go', 'get', '-d', '-v', './...'
      system 'go', 'build', "./cmd/#{name}"
    end

    bin.install name
  end
end
