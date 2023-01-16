class Gh2changelog < Formula
  version '0.0.4'
  homepage 'https://github.com/Songmu/gh2changelog'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.0.4/gh2changelog_v0.0.4_darwin_arm64.zip'
      sha256 'de9efc8914ea365c138a001dee4a51b633cf054952f997531d6f9ef4dd18e879'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.0.4/gh2changelog_v0.0.4_darwin_amd64.zip'
      sha256 'ee6d74e533c59e86756ce083f2023bf253de63363e386f4c6357a18404ca0e87'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.0.4/gh2changelog_v0.0.4_linux_arm64.tar.gz'
      sha256 'f2c96fea1a391e952b7050a5b8fe7c558b865cb13fb68adb7281a9eb0253ea90'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.0.4/gh2changelog_v0.0.4_linux_amd64.tar.gz'
      sha256 'afd51e9f4ad3fae01bed1bf95414b031f0e7eb98477760f5e34bd4c5b7cd9014'
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
