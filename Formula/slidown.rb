class Slidown < Formula
  version '0.0.5'
  homepage 'https://github.com/Songmu/slidown'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.5/slidown_v0.0.5_darwin_arm64.zip'
      sha256 'ce47d6fc7aebf04b01f202b8ff28cdf89c67f405558c6c9b8b65ca556fb42424'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.5/slidown_v0.0.5_darwin_amd64.zip'
      sha256 '64557dc5f84a13e43c2bad11409017ea3e62798fbfa242fe00af12859b8525e8'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.5/slidown_v0.0.5_linux_arm64.tar.gz'
      sha256 'd0d366b39cf78597818012d7463136a53fa4b73d5b15594cc905e963bd9586fa'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.5/slidown_v0.0.5_linux_amd64.tar.gz'
      sha256 '2d072af60237973ab12ed4a1d361e920ce8d1ca472e1a16d06e61303e43c968a'
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
