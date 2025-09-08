class Chape < Formula
  version '0.0.3'
  homepage 'https://github.com/Songmu/chape'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/chape/releases/download/v0.0.3/chape_v0.0.3_darwin_arm64.zip'
      sha256 'c27c858e3a7a55a0c52c43cae3b83d8bc3e4d5711a1fab012c84160daa59f648'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/chape/releases/download/v0.0.3/chape_v0.0.3_darwin_amd64.zip'
      sha256 '8c489a0501499687bd84727781db9e9071621d404c613065b7fc7fb46e4d6889'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/chape/releases/download/v0.0.3/chape_v0.0.3_linux_arm64.tar.gz'
      sha256 '8127d297a89b55b3401f9d2b2c980675aada41280e79b52a453b3a6df4812d99'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/chape/releases/download/v0.0.3/chape_v0.0.3_linux_amd64.tar.gz'
      sha256 'a9b362864df54061e42eda301575f58d807f02db2d8f70ea587f28c2d71c5641'
    end
  end

  head do
    url 'https://github.com/Songmu/chape.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'chape'
  end
end
