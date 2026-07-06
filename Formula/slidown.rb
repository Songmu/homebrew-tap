class Slidown < Formula
  version '0.0.4'
  homepage 'https://github.com/Songmu/slidown'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.4/slidown_v0.0.4_darwin_arm64.zip'
      sha256 '0a8426be3bb0580d5637995dd6b80fa2c98be52086193d2ee78ab2d5ee84a007'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.4/slidown_v0.0.4_darwin_amd64.zip'
      sha256 '627dc8e94ddcdb27774c5a6dad5ecb49d95d5b9c5b79ec2ff5dfdaea4188a23c'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.4/slidown_v0.0.4_linux_arm64.tar.gz'
      sha256 '749d344fc6b3541dbdc34c0e8f03d391014ad7e6571c569deab0c716e01abf0e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.4/slidown_v0.0.4_linux_amd64.tar.gz'
      sha256 '39ff38ed6cb80a561c418d2e8dbd51bd48b2562802835a655f822253466d4aa8'
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
