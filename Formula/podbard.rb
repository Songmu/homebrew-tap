class Podbard < Formula
  version '0.0.18'
  homepage 'https://github.com/Songmu/podbard'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.18/podbard_v0.0.18_darwin_arm64.zip'
      sha256 'c0cf0acdb215d1d44879d6fba5b7f9d091499f76486fbbe962beafa11856f68a'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.18/podbard_v0.0.18_darwin_amd64.zip'
      sha256 'ef7b2586f0dbd2ec90d04e37a72832f710c012ab216bb093f67ca206666c3f6a'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.18/podbard_v0.0.18_linux_arm64.tar.gz'
      sha256 'ae5f55198c8b47e18dac75bb979d055e4d2893fec268086d692064f340f4ea32'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.18/podbard_v0.0.18_linux_amd64.tar.gz'
      sha256 '31132debb84fc9f45a866dfd8ca63ae22de5ca616579cbcaad34fcdbd513f561'
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
