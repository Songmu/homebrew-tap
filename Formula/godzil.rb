class Godzil < Formula
  version '0.21.0'
  homepage 'https://github.com/Songmu/godzil'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/godzil/releases/download/v0.21.0/godzil_v0.21.0_darwin_arm64.zip'
      sha256 '1519d45bc477d8e5833055003459b7a1459e1134785338239a550fc3cb2864f1'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.21.0/godzil_v0.21.0_darwin_amd64.zip'
      sha256 '48dea38ce4d6c314141933f9f587ac507302ed678a419b5470855081edfcedcd'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/godzil/releases/download/v0.21.0/godzil_v0.21.0_linux_arm64.tar.gz'
      sha256 '9f7768515c091b65c1488a6511a0faf337370d950484acea2aeedaad6bd37968'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.21.0/godzil_v0.21.0_linux_amd64.tar.gz'
      sha256 'c34735fadc6122cde273f4bf9d1fe58370132452de0b857b589df15045c89060'
    end
  end

  head do
    url 'https://github.com/Songmu/godzil.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'godzil'
  end
end
