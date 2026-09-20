class Gitrail < Formula
  version '0.0.15'
  homepage 'https://github.com/Songmu/gitrail'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.15/gitrail_v0.0.15_darwin_arm64.zip'
      sha256 '5381d04803e75511a43583369b9b400b916743faddef672ef39e53acd947a7ea'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.15/gitrail_v0.0.15_darwin_amd64.zip'
      sha256 '95b39021767c30273da44024b627ebf6b14abc22308744a6e9ab7b5f5f27f890'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.15/gitrail_v0.0.15_linux_arm64.tar.gz'
      sha256 '5bcd7fc5e024d8cdfa6745196b7c2c51c653613935a95f05c81c95c7d1083d95'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.15/gitrail_v0.0.15_linux_amd64.tar.gz'
      sha256 'ff51f560dbfbbf36506a7210380f048501907c36d17df9eb9701f51b4a3fe28a'
    end
  end

  head do
    url 'https://github.com/Songmu/gitrail.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gitrail'
  end

  test do
    system "#{bin}/gitrail", '-h'
  end
end
