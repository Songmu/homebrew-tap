class Rssnip < Formula
  version '0.0.1'
  homepage 'https://github.com/Songmu/rssnip'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/rssnip/releases/download/v0.0.1/rssnip_v0.0.1_darwin_arm64.zip'
      sha256 'fa4055c1a9eecc0eee99e6c9d23061da6ac1f2e64690ce84bee9d978c14b5675'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/rssnip/releases/download/v0.0.1/rssnip_v0.0.1_darwin_amd64.zip'
      sha256 '54b128643f32b09e60c6dc934b2408b3b83599939c22808fced026985cbce5a3'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/rssnip/releases/download/v0.0.1/rssnip_v0.0.1_linux_arm64.tar.gz'
      sha256 'c158795cebd90dc063b8d6210e9e38e6e14c9baddbd11f97b91bfbf2dfbab6ac'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/rssnip/releases/download/v0.0.1/rssnip_v0.0.1_linux_amd64.tar.gz'
      sha256 '551cd25974e3eb609c90c60af8074b1f9d008fe23e40b582998b76ba05cb353f'
    end
  end

  head do
    url 'https://github.com/Songmu/rssnip.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'rssnip'
  end

  test do
    system "#{bin}/rssnip", '-h'
  end
end
