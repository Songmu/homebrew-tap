class Gh2changelog < Formula
  version '0.6.0'
  homepage 'https://github.com/Songmu/gh2changelog'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.6.0/gh2changelog_v0.6.0_darwin_arm64.zip'
      sha256 '2bc899fb416e6e1ec5572d4ce7b508ff4b3ac09d51dd571a4ad42054953e571b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.6.0/gh2changelog_v0.6.0_darwin_amd64.zip'
      sha256 'ed3f193c3b74c00ce520ce0c0e04372def3f9215510370ad7890fca6cef96141'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.6.0/gh2changelog_v0.6.0_linux_arm64.tar.gz'
      sha256 '1dd5ecea0e540d5935856286cf73f44eb4d3c26061a23ea57781f32145b05f2b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.6.0/gh2changelog_v0.6.0_linux_amd64.tar.gz'
      sha256 'd4744958c08af3a09a03552532dcfd854760d5f12b6748f9768a4f837a563b1f'
    end
  end

  head do
    url 'https://github.com/Songmu/gh2changelog.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gh2changelog'
  end
end
