class Godzil < Formula
  version '0.23.1'
  homepage 'https://github.com/Songmu/godzil'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/godzil/releases/download/v0.23.1/godzil_v0.23.1_darwin_arm64.zip'
      sha256 '2cf0e61c7fa139af60eec8c2641d621132fdc6d78d03d9b0fa9d31fac5854018'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.23.1/godzil_v0.23.1_darwin_amd64.zip'
      sha256 'eb0d8ed106a9e8964c492e1be19298d17330a4ddd3b156cc74a1615910ab1ef2'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/godzil/releases/download/v0.23.1/godzil_v0.23.1_linux_arm64.tar.gz'
      sha256 'ed9a662803d4f5a315129e8a9146c700b2896e58ce3fec6b0d9e4e27cd91b0ff'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.23.1/godzil_v0.23.1_linux_amd64.tar.gz'
      sha256 'e783a0e9ac9437b795f7fffa60ba298ac2d6109ea9f98c0b6da78c3d6da44f67'
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
