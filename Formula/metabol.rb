class Metabol < Formula
  version '0.0.1'
  homepage 'https://github.com/Songmu/metabol'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.1/metabol_v0.0.1_darwin_arm64.zip'
      sha256 '1c682deb9d477a31f46824e65d41217c4e099db0ff98997c83c61c795260f670'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.1/metabol_v0.0.1_darwin_amd64.zip'
      sha256 'f1dc0ec25b96a03718250e68e06e3aeea092ce210e5f08a86047201725a28258'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.1/metabol_v0.0.1_linux_arm64.tar.gz'
      sha256 'b34fe57be2a23b3a020fc31036989c0aaa0c509e03b1bb1a0fd985320e0f76cb'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.1/metabol_v0.0.1_linux_amd64.tar.gz'
      sha256 'ee83d122fda491b0428b3b21f27aeabea62d8e3b6a11caf567820ef6bc2c094a'
    end
  end

  head do
    url 'https://github.com/Songmu/metabol.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'metabol'
  end

  test do
    system "#{bin}/metabol", '-h'
  end
end
