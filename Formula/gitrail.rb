class Gitrail < Formula
  version '0.0.2'
  homepage 'https://github.com/Songmu/gitrail'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.2/gitrail_v0.0.2_darwin_arm64.zip'
      sha256 '1d3302fa1f7f2a9e606b45a74f64b21bfda2f4aa37651418f9e44023049094c5'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.2/gitrail_v0.0.2_darwin_amd64.zip'
      sha256 '8423e4fb98a9ed8107830394bdf799048f63f72f42dcd0ecfaea1d4fb5bcb5d6'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.2/gitrail_v0.0.2_linux_arm64.tar.gz'
      sha256 '506f3646ebc425cf53fd5230e676a4f1f9ac3453b28c155a1b53b65bfcb29636'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.2/gitrail_v0.0.2_linux_amd64.tar.gz'
      sha256 'b488adeaa2033552c48c137d461ab9a81e9f94164dc6ccc25039b8465c90b187'
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
