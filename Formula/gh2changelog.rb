class Gh2changelog < Formula
  version '0.0.3'
  homepage 'https://github.com/Songmu/gh2changelog'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.0.3/gh2changelog_v0.0.3_darwin_arm64.zip'
      sha256 'b94ea17aa63acde0f1f1a57b678ea84b22e45f18d2d6cf9fb62eeb3aee5fdce3'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.0.3/gh2changelog_v0.0.3_darwin_amd64.zip'
      sha256 '2147216587e9f53ea5ddfdba857c390223bea9d5f4a90dd460d2dff86945ed96'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.0.3/gh2changelog_v0.0.3_linux_arm64.tar.gz'
      sha256 'bc94330b29d42cf8abbf31ad4c9fc07577f6e96987d7fdbbcb4c1c398df54f1e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.0.3/gh2changelog_v0.0.3_linux_amd64.tar.gz'
      sha256 'c7a206479340fc787811107ebe65e8c1df97cb89b4182b846b1a4c3c61373f0d'
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
