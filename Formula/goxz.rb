class Goxz < Formula
  version '0.13.0'
  homepage 'https://github.com/Songmu/goxz'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/goxz/releases/download/v0.13.0/goxz_v0.13.0_darwin_arm64.zip'
      sha256 '770815525ceff6bd199ef4bbc54a5b93cd9906a98c5001014ce3bb04b72ad5c8'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/goxz/releases/download/v0.13.0/goxz_v0.13.0_darwin_amd64.zip'
      sha256 '8506c13e1d88d426574e9a3e6ce9ed00672459eaebb8b9e8015b781af2227904'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/goxz/releases/download/v0.13.0/goxz_v0.13.0_linux_arm64.tar.gz'
      sha256 '0282ef1c1986b6229c1090817cc64392079929bf234c45d7764a79c40b20cf2a'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/goxz/releases/download/v0.13.0/goxz_v0.13.0_linux_amd64.tar.gz'
      sha256 '53a288710390f5e33e5af6e50cad7bb95fe2aada29d7c0160e720eae528e6ad4'
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
