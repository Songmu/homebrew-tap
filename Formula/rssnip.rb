class Rssnip < Formula
  version '0.0.2'
  homepage 'https://github.com/Songmu/rssnip'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/rssnip/releases/download/v0.0.2/rssnip_v0.0.2_darwin_arm64.zip'
      sha256 'f744ab981265ea7b03224c0c4715212078017bed3131d098708179f4ff4c131d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/rssnip/releases/download/v0.0.2/rssnip_v0.0.2_darwin_amd64.zip'
      sha256 'a530c60dcfb53bb4ab3dcfca1ee48297840a65224cc9a98246e263a284befb35'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/rssnip/releases/download/v0.0.2/rssnip_v0.0.2_linux_arm64.tar.gz'
      sha256 'd6e96edfe0135302b8fbe02132097b8f70e7bdf08808a0171d3d69172e8c65e3'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/rssnip/releases/download/v0.0.2/rssnip_v0.0.2_linux_amd64.tar.gz'
      sha256 '935a232b8915278769159c3521a2a046f48b166bbae72bcc16c441204075ab3a'
    end
  end

  head do
    url 'https://github.com/Songmu/rssnip.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'rssnip'
  end

  test do
    system "#{bin}/rssnip", '-h'
  end
end
