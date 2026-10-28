class Gosimilarity < Formula
  version '0.0.1'
  homepage 'https://github.com/Songmu/gosimilarity'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gosimilarity/releases/download/v0.0.1/gosimilarity_v0.0.1_darwin_arm64.zip'
      sha256 '9c9a51a2849ee869b9b9c88cc3bd2f4315e1ebd2e1f864397794ffc93589a6df'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gosimilarity/releases/download/v0.0.1/gosimilarity_v0.0.1_darwin_amd64.zip'
      sha256 'd7d2dc9d42ebc11a5791587796d1f6d519ba5b78a8e1274570da8f643aa4cde7'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gosimilarity/releases/download/v0.0.1/gosimilarity_v0.0.1_linux_arm64.tar.gz'
      sha256 '3fbfad39604102c08658220b247df58cf1ddde5f2183f2775bbc7a3ca4838dc8'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gosimilarity/releases/download/v0.0.1/gosimilarity_v0.0.1_linux_amd64.tar.gz'
      sha256 '6d5921a1e46c0b9cc5f655ba49076af5178ff87e5aaa26a652ceed9de8c056ee'
    end
  end

  head do
    url 'https://github.com/Songmu/gosimilarity.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gosimilarity'
  end

  test do
    system "#{bin}/gosimilarity", '-h'
  end
end
