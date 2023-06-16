class Godzil < Formula
  version '0.20.13'
  homepage 'https://github.com/Songmu/godzil'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/godzil/releases/download/v0.20.13/godzil_v0.20.13_darwin_arm64.zip'
      sha256 'b44c53cbfff5fe4bc8dd0fc03b7fdb233c0745ba361529ae99e6c6736434f691'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.20.13/godzil_v0.20.13_darwin_amd64.zip'
      sha256 'e8267dd458523825e51a5d686b19f78d5ff973ab4f85f5d438b83886831fe041'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/godzil/releases/download/v0.20.13/godzil_v0.20.13_linux_arm64.tar.gz'
      sha256 '6c600a1d6583a4c4b58c19d7b965b03426b34a48d2b70982078a3f4ab10e088f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.20.13/godzil_v0.20.13_linux_amd64.tar.gz'
      sha256 'a40289eb0684123d1ea25516ed866e1ce3e6e6b59e44cbbb4c89e807b5594dd7'
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
