class Gosimilarity < Formula
  version '0.0.2'
  homepage 'https://github.com/Songmu/gosimilarity'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gosimilarity/releases/download/v0.0.2/gosimilarity_v0.0.2_darwin_arm64.zip'
      sha256 '2ce3c5f00575f0950e9a100062b9e8362eee1d9048c11745687784a252306120'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gosimilarity/releases/download/v0.0.2/gosimilarity_v0.0.2_darwin_amd64.zip'
      sha256 '19601c441b97bbe878be9049ccdec993c785c5031ea2dc923176edd3f4764e70'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gosimilarity/releases/download/v0.0.2/gosimilarity_v0.0.2_linux_arm64.tar.gz'
      sha256 '1ddb22e2543e0e9761471de0cb3f13462a49749ffbd23b1f5a385345139e54ef'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gosimilarity/releases/download/v0.0.2/gosimilarity_v0.0.2_linux_amd64.tar.gz'
      sha256 'a0d82974553f1b6f8053572211b1a2bd433fffea3fabd4cf1629cb50f04020e3'
    end
  end

  head do
    url 'https://github.com/Songmu/gosimilarity.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gosimilarity'
  end

  test do
    system "#{bin}/gosimilarity", '-h'
  end
end
