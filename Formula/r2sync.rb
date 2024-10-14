class R2sync < Formula
  version '0.0.3'
  homepage 'https://github.com/Songmu/r2sync'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/r2sync/releases/download/v0.0.3/r2sync_v0.0.3_darwin_arm64.zip'
      sha256 'a546b924ba84feb510c997fd4823aae1441345235de1620a6366b49cdec1d466'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/r2sync/releases/download/v0.0.3/r2sync_v0.0.3_darwin_amd64.zip'
      sha256 '0540862ec3396250b053a7e3248409999dbe599bde7b99757575bf9d1606d39d'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/r2sync/releases/download/v0.0.3/r2sync_v0.0.3_linux_arm64.tar.gz'
      sha256 'be911b23c05fec2a2dfe6dab5fde4f845ec95f6fa6b3c6552e8e9925bf186135'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/r2sync/releases/download/v0.0.3/r2sync_v0.0.3_linux_amd64.tar.gz'
      sha256 'd04ecdda701200f2a1762448e667f549e5262700be7f8b417fbbd786c26496a8'
    end
  end

  head do
    url 'https://github.com/Songmu/r2sync.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'r2sync'
  end
end
