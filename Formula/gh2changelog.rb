class Gh2changelog < Formula
  version '0.4.0'
  homepage 'https://github.com/Songmu/gh2changelog'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.4.0/gh2changelog_v0.4.0_darwin_arm64.zip'
      sha256 '3281071f0e3427f943c0a50840bd8ac824e840e2ea96b2d673bfe7ca2a126757'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.4.0/gh2changelog_v0.4.0_darwin_amd64.zip'
      sha256 'c575cd8836699ee4997e4f2b7baceaa389395662e4b159070e0cf245c834bad8'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.4.0/gh2changelog_v0.4.0_linux_arm64.tar.gz'
      sha256 'd484c90bb66ab124e37a13548d1d18982301ce8ddfa8b9136f15125c52d05e84'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.4.0/gh2changelog_v0.4.0_linux_amd64.tar.gz'
      sha256 '226c1185da2d68afb00d3a8569bd27c83b32b8afcfaa94e4b3b9185ac09ac314'
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
