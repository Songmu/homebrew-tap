class Goxz < Formula
  version '0.10.1'
  homepage 'https://github.com/Songmu/goxz'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/goxz/releases/download/v0.10.1/goxz_v0.10.1_darwin_arm64.zip'
      sha256 'a980a03edd3f2143cf4e24d06ebc71cbf51208dff3facc91bb3dafb7445ec44b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/goxz/releases/download/v0.10.1/goxz_v0.10.1_darwin_amd64.zip'
      sha256 'cbfc5da6993b29026f88e4bdf4eea5ed3db0fbe6e1c8da7f4afe97cfd166469e'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/goxz/releases/download/v0.10.1/goxz_v0.10.1_linux_arm64.tar.gz'
      sha256 '8c2043755b6a5389ba98164ee123f1ece5a1bfe6a1cff2c34b2295f98fab665f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/goxz/releases/download/v0.10.1/goxz_v0.10.1_linux_amd64.tar.gz'
      sha256 '7500bba6c089fa54a5b7b2b123239dcda128cff1b18ef230535b295e1980015c'
    end
  end

  head do
    url 'https://github.com/Songmu/goxz.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'goxz'
  end
end
