class Podbard < Formula
  version '0.0.17'
  homepage 'https://github.com/Songmu/podbard'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.17/podbard_v0.0.17_darwin_arm64.zip'
      sha256 '6af5636e7c83a97540d953ec30d2069f1b336f00f2fcbe2e1ca545568bb3c931'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.17/podbard_v0.0.17_darwin_amd64.zip'
      sha256 '301a2ac8ccb98d7c03befd928fda2fab0bf974da4fe8726083779befef7211ea'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.17/podbard_v0.0.17_linux_arm64.tar.gz'
      sha256 'ee4fad4e07a5f00b8e72defac98c452f543a709891de4eea3721f3212a79f1f6'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.17/podbard_v0.0.17_linux_amd64.tar.gz'
      sha256 'd33b1cf06333ff6b73a020e96d85894b550c920d06a98c9f39590365d1b57a6a'
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
