class R2sync < Formula
  version '0.0.8'
  homepage 'https://github.com/Songmu/r2sync'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/r2sync/releases/download/v0.0.8/r2sync_v0.0.8_darwin_arm64.zip'
      sha256 '36401d86c4ad948dab2a6ee6b543fa24ddc53e7a507f0eec6772b1b468968e6a'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/r2sync/releases/download/v0.0.8/r2sync_v0.0.8_darwin_amd64.zip'
      sha256 '7fb823bcf8e789818ea564a495db02d67deeb39ea37f840a601d18ef44d79bf5'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/r2sync/releases/download/v0.0.8/r2sync_v0.0.8_linux_arm64.tar.gz'
      sha256 'f7fa55e5c215f89afa8187d1ae1a40401321dc430fc3d44dbb4ba0d060107374'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/r2sync/releases/download/v0.0.8/r2sync_v0.0.8_linux_amd64.tar.gz'
      sha256 '6283cab21e312debcb93a33bbda2ee3f73897ee92c953dedcc979502d2eff36c'
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
