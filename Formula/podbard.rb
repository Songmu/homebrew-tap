class Podbard < Formula
  version '0.0.14'
  homepage 'https://github.com/Songmu/podbard'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.14/podbard_v0.0.14_darwin_arm64.zip'
      sha256 '4ec7fc113963be97a2b27d5bde3356cbdd2954b96aa17d87c7317bec7dd1bb35'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.14/podbard_v0.0.14_darwin_amd64.zip'
      sha256 'de83055165fc83ec0bbc12227cc0fd2237cffebc52b7b227d5ebab65ad1dadfd'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.14/podbard_v0.0.14_linux_arm64.tar.gz'
      sha256 '91674935bdcd8002c03fe018f1e2ff13482cfdf969d28e9dfbc1a243661202c8'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.14/podbard_v0.0.14_linux_amd64.tar.gz'
      sha256 'f3f0d5ef09e8335b2a7da7db7afcc318e744d37e69a6792c59d424011f97eff4'
    end
  end

  head do
    url 'https://github.com/Songmu/podbard.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'podbard'
  end
end
