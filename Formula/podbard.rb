class Podbard < Formula
  version '0.0.19'
  homepage 'https://github.com/Songmu/podbard'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.19/podbard_v0.0.19_darwin_arm64.zip'
      sha256 'e44af4656f2bd762aa21325e5adf8d09f76f193fc521dd89fb00a903711ecea2'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.19/podbard_v0.0.19_darwin_amd64.zip'
      sha256 'fa6368068615f45125261b4272be3f807727bae67d10d7700efd04c5fcabc3cc'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.19/podbard_v0.0.19_linux_arm64.tar.gz'
      sha256 'bfdf27ed7a2a017d3dc9126e8ae6cd49ee297a48a87413bc12abb3956b74d98a'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.19/podbard_v0.0.19_linux_amd64.tar.gz'
      sha256 '05cf8eff23c600310efeec57a74e64776e67375dd545271c2deba319c35ae4f2'
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
