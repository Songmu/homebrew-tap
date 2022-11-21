class Ecschedule < Formula
  version '0.7.0'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.7.0/ecschedule_v0.7.0_darwin_arm64.zip'
      sha256 '1cdf0ba2c73fbcdc2ed58ad451289f60b79207255deee8f281cebf22373d8c0a'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.7.0/ecschedule_v0.7.0_darwin_amd64.zip'
      sha256 'ccfb96cbd1c8e136437d5c72bc62adbc2e793611a6e7e28dd24566ab62dfcb32'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.7.0/ecschedule_v0.7.0_linux_arm64.tar.gz'
      sha256 '4fa389f2ce6f3dd0750b25c73569a1ab67e9004a38c8aec1f26e5dcd2ce8fbf5'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.7.0/ecschedule_v0.7.0_linux_amd64.tar.gz'
      sha256 'f434da6003ac0ed303adefaf421c42c01e6c6436bb828bdc10b91c306cc527d4'
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
