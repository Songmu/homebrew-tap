class Gh2changelog < Formula
  version '0.3.0'
  homepage 'https://github.com/Songmu/gh2changelog'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.3.0/gh2changelog_v0.3.0_darwin_arm64.zip'
      sha256 '9eee4c3282a57b3b1d4e2409fe284dfca68f601520b85dd8040a61ce0108976a'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.3.0/gh2changelog_v0.3.0_darwin_amd64.zip'
      sha256 'a644f65aed14d0a5bceef58415ffb7a146676784db0b0ce0dd897dfad1e4bdcd'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.3.0/gh2changelog_v0.3.0_linux_arm64.tar.gz'
      sha256 '2bd738cfcacd5d35b4805b9942b09327f187a28895f7b4527e40fd84c96da1ab'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.3.0/gh2changelog_v0.3.0_linux_amd64.tar.gz'
      sha256 '2af1db4b2a4c0ebf13e010646423e263d233f811c101e0e0613f03eb7fe4aab5'
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
