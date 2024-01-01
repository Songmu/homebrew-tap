class Gh2changelog < Formula
  version '0.0.5'
  homepage 'https://github.com/Songmu/gh2changelog'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.0.5/gh2changelog_v0.0.5_darwin_arm64.zip'
      sha256 '71aa471aa1ddb2f4fa7c5da743e6551b912a4ab8bd76a48478103bf763e83026'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.0.5/gh2changelog_v0.0.5_darwin_amd64.zip'
      sha256 '6f3a066845ddf43650a5e3f9e111467cc74ea004b6306e667d69da5be8dd001a'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.0.5/gh2changelog_v0.0.5_linux_arm64.tar.gz'
      sha256 'f9b376d17152af567273538639d720b2e7ef0ee6be1d867b9d32da3f75b12640'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.0.5/gh2changelog_v0.0.5_linux_amd64.tar.gz'
      sha256 '67f6fdffcc5348a7194998dc65708a6874eceacc079db72297817568668ff406'
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
