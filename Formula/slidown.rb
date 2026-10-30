class Slidown < Formula
  version '0.0.13'
  homepage 'https://github.com/Songmu/slidown'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.13/slidown_v0.0.13_darwin_arm64.zip'
      sha256 '1820481b1124f8ddcae13978e4317311d2d6fd47cd67d490d6a6d6f8b42ba288'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.13/slidown_v0.0.13_darwin_amd64.zip'
      sha256 '0440b0ea11619d33b83d35ad0d5affc84573ebf454e96863c83f490e4a4676ea'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.13/slidown_v0.0.13_linux_arm64.tar.gz'
      sha256 '83b5cb7270caf2c01c3c307fd6eed24fc8b0732be7b16a1b7d3edb27615d178f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.13/slidown_v0.0.13_linux_amd64.tar.gz'
      sha256 '93e495558c6613037611512d4dca11b4fc9c5483e3693bde39de432c0e4e2277'
    end
  end

  head do
    url 'https://github.com/Songmu/slidown.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'slidown'
  end

  test do
    system "#{bin}/slidown", '-h'
  end
end
