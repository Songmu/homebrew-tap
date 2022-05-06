class Goxz < Formula
  name = 'goxz'
  version '0.8.2'
  homepage "https://github.com/Songmu/#{name}"
  url "https://github.com/Songmu/#{name}/releases/download/v#{version}/#{name}_v#{version}_darwin_amd64.zip"
  sha256 'a2468f973454cb7fd9b9d49fd6c9a7d7bb8dca9b8a9111f8255b3d0601e31265'

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
