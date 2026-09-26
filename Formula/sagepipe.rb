class Sagepipe < Formula
  version '0.0.3'
  homepage 'https://github.com/Songmu/sagepipe'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/sagepipe/releases/download/v0.0.3/sagepipe_v0.0.3_darwin_arm64.zip'
      sha256 '023d3db32da26853b7e6e6b31548dca97dda783ec57029cd5b02871b75c43078'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/sagepipe/releases/download/v0.0.3/sagepipe_v0.0.3_darwin_amd64.zip'
      sha256 '3421cab5f35f871e59de273d152fc4b84a57456447d2f62d25117af50bde389c'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/sagepipe/releases/download/v0.0.3/sagepipe_v0.0.3_linux_arm64.tar.gz'
      sha256 '6f70878d03b40e6740c798434664ef19b484e74c6fa8b5a630a1c51481ed0a27'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/sagepipe/releases/download/v0.0.3/sagepipe_v0.0.3_linux_amd64.tar.gz'
      sha256 'b72b713e78c1118680362ff7878b5b9d2be29ddf4034bc2be5669e77230e7645'
    end
  end

  head do
    url 'https://github.com/Songmu/sagepipe.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'sagepipe'
  end

  test do
    system "#{bin}/sagepipe", '-h'
  end
end
