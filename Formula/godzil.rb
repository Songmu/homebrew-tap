class Godzil < Formula
  version '0.20.16'
  homepage 'https://github.com/Songmu/godzil'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/godzil/releases/download/v0.20.16/godzil_v0.20.16_darwin_arm64.zip'
      sha256 'dd6d4f92ae07893b04493946a21c32657ce04a6482a4abb2af740735160092b5'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.20.16/godzil_v0.20.16_darwin_amd64.zip'
      sha256 '033ceb45916b35fe66910c7ee006c1490c6cc03042850b6ad6f3db9c53d0699b'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/godzil/releases/download/v0.20.16/godzil_v0.20.16_linux_arm64.tar.gz'
      sha256 'f6ce9c7e94bebef311cb801a0efce5cb275a0ba54fc253f22c53db435171243c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.20.16/godzil_v0.20.16_linux_amd64.tar.gz'
      sha256 'b85f33945824d5b9b5a0d265d64989237cf3868e00478b6e25f6de5dd5a21a36'
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
