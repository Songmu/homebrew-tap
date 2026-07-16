class Slidown < Formula
  version '0.0.8'
  homepage 'https://github.com/Songmu/slidown'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.8/slidown_v0.0.8_darwin_arm64.zip'
      sha256 '8b3122887f7aea0a8392ac57f94fb9073168e21a4a81e601dd7d5fd6560822d2'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.8/slidown_v0.0.8_darwin_amd64.zip'
      sha256 'd8f5b5a839eadd9914636feb055bc568acdfdbfd4c2899a184691fd72c7d730c'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.8/slidown_v0.0.8_linux_arm64.tar.gz'
      sha256 'be230cb7a5f9a71b1e540295bafbae4e8bcdadb351115976f31c04d6b31fb80a'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.8/slidown_v0.0.8_linux_amd64.tar.gz'
      sha256 '06821359bbf22fb9df10dfc5cd9cfe9fb52d570e22092ebab6b16ae20a6f8054'
    end
  end

  head do
    url 'https://github.com/Songmu/slidown.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'slidown'
  end

  test do
    system "#{bin}/slidown", '-h'
  end
end
