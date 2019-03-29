class Goxz < Formula
  name = 'goxz'
  version '0.3.0'
  homepage "https://github.com/Songmu/#{name}"
  url "https://github.com/Songmu/#{name}/releases/download/v#{version}/#{name}_v#{version}_darwin_amd64.zip"
  sha256 'fe376dc9e90ab826a41799824d3085661a849662163631f9ca2889f3ab8b664b'

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
