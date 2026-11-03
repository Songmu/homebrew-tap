class Gosimilarity < Formula
  version '0.0.5'
  homepage 'https://github.com/Songmu/gosimilarity'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gosimilarity/releases/download/v0.0.5/gosimilarity_v0.0.5_darwin_arm64.zip'
      sha256 '9a425edf45061776f27898eec3ac7c4b6b9289f50871a52b846f603f8da7e936'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gosimilarity/releases/download/v0.0.5/gosimilarity_v0.0.5_darwin_amd64.zip'
      sha256 '41454448c0b4279b199a3f933ce43f88b7d10344e37a94615f86f4a8ffb1baec'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gosimilarity/releases/download/v0.0.5/gosimilarity_v0.0.5_linux_arm64.tar.gz'
      sha256 '06f360375fc2335d3c4386783245643f2152634ebef85b4be5efd51a5ad0412f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gosimilarity/releases/download/v0.0.5/gosimilarity_v0.0.5_linux_amd64.tar.gz'
      sha256 '5f347265c2fb671a7924d67f0a2b65d9b9a6b4f54efd43e47e5ce35096ab153d'
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
