class Gocredits < Formula
  version '0.3.0'
  homepage 'https://github.com/Songmu/gocredits'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gocredits/releases/download/v0.3.0/gocredits_v0.3.0_darwin_arm64.zip'
      sha256 '0580fdb60ad1dae151ce91fe326633645eed910b956570ae63634337b4ff91c0'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gocredits/releases/download/v0.3.0/gocredits_v0.3.0_darwin_amd64.zip'
      sha256 '7e77635826f3d6cb8dd972e479d9152710054e5a3f31740ed022953cb7c7d6dd'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gocredits/releases/download/v0.3.0/gocredits_v0.3.0_linux_arm64.tar.gz'
      sha256 '742f4e0d4e1688a2c227c823c0fcdd45c19f6b9f0a35a84d1de338d7dad37b99'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gocredits/releases/download/v0.3.0/gocredits_v0.3.0_linux_amd64.tar.gz'
      sha256 '3b63be429116edcb478dacd34b975a31d8788b703ef86d77c77f6c19f3fa67ab'
    end
  end

  head do
    url 'https://github.com/Songmu/gocredits.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gocredits'
  end
end
