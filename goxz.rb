class Goxz < Formula
  @@name = 'goxz'
  version '0.0.2'
  homepage "https://github.com/Songmu/#{@@name}"
  url "https://github.com/Songmu/#{@@name}/releases/download/v#{version}/#{@@name}_v#{version}_darwin_amd64.zip"
  sha256 '5b4cdb7b0862484114d9ef21dd5dc016c194c2314d13e2a129f9ed5fbe01f411'

  head do
    url "https://github.com/Songmu/#{@@name}.git"
    depends_on 'go' => :build
  end

  def install
    if build.head?
      ENV['GOPATH'] = buildpath
      ENV['PATH'] = buildpath/'bin:' + ENV['PATH']
      puts ENV['PATH']
      puts buildpath
      mkdir_p buildpath/'src/github.com/Songmu'
      ln_s buildpath, buildpath/"src/github.com/Songmu/#{@@name}"
      system 'make', 'deps'
      system 'make', 'build'
    end

    bin.install @@name
  end
end
