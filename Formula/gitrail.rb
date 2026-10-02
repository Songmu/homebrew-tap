class Gitrail < Formula
  version '0.0.24'
  homepage 'https://github.com/Songmu/gitrail'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.24/gitrail_v0.0.24_darwin_arm64.zip'
      sha256 'bf2e66ee91738e967402ae96e527c9648b80a59269a3a5013dac75af1e706791'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.24/gitrail_v0.0.24_darwin_amd64.zip'
      sha256 '69e3159189e138943801262f74c3c377f7912118d2c3c9addf991450b0ba72f7'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.24/gitrail_v0.0.24_linux_arm64.tar.gz'
      sha256 'cc5d324d06c36786295f9d2eb98aa78fe74db61d07411af42b33e12f5f7cb310'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.24/gitrail_v0.0.24_linux_amd64.tar.gz'
      sha256 'f758742e78e67ff1fc25f35e03da044e33184ee63bef4351568ac09b819e001b'
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
