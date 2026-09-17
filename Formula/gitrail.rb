class Gitrail < Formula
  version '0.0.7'
  homepage 'https://github.com/Songmu/gitrail'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.7/gitrail_v0.0.7_darwin_arm64.zip'
      sha256 '49818525a522d32238d844fb25c5fe622c98c7937bf7dda173cb2fbbc3c5111e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.7/gitrail_v0.0.7_darwin_amd64.zip'
      sha256 '78c48690522d2b1300800196dabba45083da3a77db0bf122bfcbe7ee452ef9e6'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.7/gitrail_v0.0.7_linux_arm64.tar.gz'
      sha256 'aedc3f2d63cf93b5ba9b73140650745ec2f7e022728e84c0c73186f3265aa677'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.7/gitrail_v0.0.7_linux_amd64.tar.gz'
      sha256 '438f2de0c9e7acfa0d5ccee66b0dfbe5ee1d563d37ca5527ccceb7cd4e1ed582'
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
