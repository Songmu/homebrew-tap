class Slidown < Formula
  version '0.0.7'
  homepage 'https://github.com/Songmu/slidown'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.7/slidown_v0.0.7_darwin_arm64.zip'
      sha256 '0a98deac6ba112408ebf9f3e6e116be11afb273ecab3d03447b0f89cbe82997e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.7/slidown_v0.0.7_darwin_amd64.zip'
      sha256 '2738a6293a37cc8ba2cd964d572f5046beb7a6ec4c061c4dc0647f75d6efca7f'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.7/slidown_v0.0.7_linux_arm64.tar.gz'
      sha256 '8c0ee5c2cd35e793a2329e8ac2d0198ff748674a71de90b5386a02f1d8a5a7a4'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.7/slidown_v0.0.7_linux_amd64.tar.gz'
      sha256 '56918d08ce67612c792e29e63855c1762bcae926c5557392f848c488cc39a67b'
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
