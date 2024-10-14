class Podbard < Formula
  version '0.0.13'
  homepage 'https://github.com/Songmu/podbard'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.13/podbard_v0.0.13_darwin_arm64.zip'
      sha256 '53d180b657d0e4f1c8fc276a6f322424587d6c44a336f4e544fa8f6eca30a124'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.13/podbard_v0.0.13_darwin_amd64.zip'
      sha256 '81602860a805e8a83f60949ffdd434708e8873953f5cfab066016a8c78d7c8cc'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.13/podbard_v0.0.13_linux_arm64.tar.gz'
      sha256 '70e49763ee36234402a1a2eeb1a3674f8cf03481bd971dd56c445e0d34c79bc7'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.13/podbard_v0.0.13_linux_amd64.tar.gz'
      sha256 'c948de954a2d8cbdd38aff19c9e4ab7b877769c6aa0e4f48120dfc2d20e1deb0'
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
