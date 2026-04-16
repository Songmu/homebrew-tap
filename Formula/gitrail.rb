class Gitrail < Formula
  version '0.0.6'
  homepage 'https://github.com/Songmu/gitrail'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.6/gitrail_v0.0.6_darwin_arm64.zip'
      sha256 '677ebd065352a20dcbd2655c8df5781ea0f38413160f7e3e20c164c4b44b13a7'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.6/gitrail_v0.0.6_darwin_amd64.zip'
      sha256 'e63ce47d122bdbb0270a91faf40ccdb52addd93418058233112071358b60e77a'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.6/gitrail_v0.0.6_linux_arm64.tar.gz'
      sha256 '00f0808cd251142bd2cebfd1efd5788882874afd819b56d2274f71cd1aeea037'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.6/gitrail_v0.0.6_linux_amd64.tar.gz'
      sha256 'c1f767efd9299a18baa6147517dc792fb01b11a9820dde6630b91371e28e694b'
    end
  end

  head do
    url 'https://github.com/Songmu/gitrail.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gitrail'
  end

  test do
    system "#{bin}/gitrail", '-h'
  end
end
