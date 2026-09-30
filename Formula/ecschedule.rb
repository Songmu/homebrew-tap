class Ecschedule < Formula
  version '0.21.0'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.21.0/ecschedule_v0.21.0_darwin_arm64.zip'
      sha256 'c1b25275c844cecae14809c128eb31e068ca6f204c22461bcde6ce27538528b6'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.21.0/ecschedule_v0.21.0_darwin_amd64.zip'
      sha256 'c6ed9088e6874443f171c0129b3f0517905336db5c10f0fc12aff82eddb5e20f'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.21.0/ecschedule_v0.21.0_linux_arm64.tar.gz'
      sha256 'a66aeaf51df527188fc178c88b589936560a3895c4a4ca05940f05e6e19cfc11'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.21.0/ecschedule_v0.21.0_linux_amd64.tar.gz'
      sha256 'e83f06377ac1c6e807e8dec03114431256ec85708a241b24a255c6e3f822de90'
    end
  end

  head do
    url 'https://github.com/Songmu/ecschedule.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'ecschedule'
  end
end
