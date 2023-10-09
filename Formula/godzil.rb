class Godzil < Formula
  version '0.20.15'
  homepage 'https://github.com/Songmu/godzil'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/godzil/releases/download/v0.20.15/godzil_v0.20.15_darwin_arm64.zip'
      sha256 'c3959c62653eb3e95d2c3563727e6c3d0bcbf2a25ae3892b79d8938ee171617f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.20.15/godzil_v0.20.15_darwin_amd64.zip'
      sha256 'c8cae451945e3da10efb36a262213893a628022f1a306ce31e60150df3c260c9'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/godzil/releases/download/v0.20.15/godzil_v0.20.15_linux_arm64.tar.gz'
      sha256 '56f27d6dde32c3c5ed6a75d162269f2a34b2f093957dc0a6f3820620e9abd4d6'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.20.15/godzil_v0.20.15_linux_amd64.tar.gz'
      sha256 'f51f2170e3b26d785884dbc20cfe52e4e65de7b520b4c2b5b06ce3b0c6649e81'
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
