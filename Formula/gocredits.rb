class Gocredits < Formula
  version '0.3.1'
  homepage 'https://github.com/Songmu/gocredits'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gocredits/releases/download/v0.3.1/gocredits_v0.3.1_darwin_arm64.zip'
      sha256 '569ff9975911e02426e0a72d2ea756e57b07ef9b3d9ab906644f5df2f2caf5a0'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gocredits/releases/download/v0.3.1/gocredits_v0.3.1_darwin_amd64.zip'
      sha256 'a894378ed25e2baa5067a27b59197d6f0a57c835fccb4ae4c77e343eca9ac322'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gocredits/releases/download/v0.3.1/gocredits_v0.3.1_linux_arm64.tar.gz'
      sha256 '8891b816fc38d54f9939e393b46ce5905536f6a63fff3fba1d8b740db949ca2a'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gocredits/releases/download/v0.3.1/gocredits_v0.3.1_linux_amd64.tar.gz'
      sha256 '8e351f4fbe5211c4bbcc427da03489dbf2856e1bcf9cfcb2fa4a12f624cab2e9'
    end
  end

  head do
    url 'https://github.com/Songmu/gocredits.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gocredits'
  end
end
