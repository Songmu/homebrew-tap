class Gocredits < Formula
  version '1.1.0'
  homepage 'https://github.com/Songmu/gocredits'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gocredits/releases/download/v1.1.0/gocredits_v1.1.0_darwin_arm64.zip'
      sha256 'cc22a75f47ac183084a596168f3015bd817e36159982f6892277e662099f5e35'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gocredits/releases/download/v1.1.0/gocredits_v1.1.0_darwin_amd64.zip'
      sha256 '3ddda6754f65ceff6b66c0d460a19acece628609e7c2774ee5f2db8896646a57'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gocredits/releases/download/v1.1.0/gocredits_v1.1.0_linux_arm64.tar.gz'
      sha256 '8cac2ece57df6155642ac6660ac7ea6cdb43270e83c19c827047b788d4a123ea'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gocredits/releases/download/v1.1.0/gocredits_v1.1.0_linux_amd64.tar.gz'
      sha256 'd1fb58932299fb068b2c19e2ee14d396a44c83f9dfaccacc1427766a857ea961'
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
