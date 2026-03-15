class Gitrail < Formula
  version '0.0.1'
  homepage 'https://github.com/Songmu/gitrail'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.1/gitrail_v0.0.1_darwin_arm64.zip'
      sha256 '87ecac576d017f2e8e0ca537dfbd5784a87a93d3584b5841ecdde98fe3fa38bf'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.1/gitrail_v0.0.1_darwin_amd64.zip'
      sha256 '21aa6fdabf12543a30c049db514212343ea49e5dee2260f9df1753d2f32c5876'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.1/gitrail_v0.0.1_linux_arm64.tar.gz'
      sha256 '03f731c2d00becf62da83b9d5e2c908cba8760b84372e41453eea395538bba08'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.1/gitrail_v0.0.1_linux_amd64.tar.gz'
      sha256 '2b968e3e5013d02a4796ec57c3f21d089982a3b1e5a5bfbc73628bf5b6539cd0'
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
