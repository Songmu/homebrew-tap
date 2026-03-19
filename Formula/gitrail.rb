class Gitrail < Formula
  version '0.0.3'
  homepage 'https://github.com/Songmu/gitrail'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.3/gitrail_v0.0.3_darwin_arm64.zip'
      sha256 '475603d13b3fbf22d34cbbbd564842b6a27b60a7103801818bb50af545de4bfd'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.3/gitrail_v0.0.3_darwin_amd64.zip'
      sha256 'd732d706a4168124162105adf5922f688d68e8ca0ee84a4c2fe78855519b1636'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.3/gitrail_v0.0.3_linux_arm64.tar.gz'
      sha256 'c462bc8f6206e44125b76e1c7efee78da6d7582be52ad28a765876e449401611'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.3/gitrail_v0.0.3_linux_amd64.tar.gz'
      sha256 '2b0bb1c5e9a0cfca49fe574860b0e9571381f735599183ded93c4d7acf28a516'
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
