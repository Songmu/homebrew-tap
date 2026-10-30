class Gosimilarity < Formula
  version '0.0.4'
  homepage 'https://github.com/Songmu/gosimilarity'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gosimilarity/releases/download/v0.0.4/gosimilarity_v0.0.4_darwin_arm64.zip'
      sha256 '66766c5a8539245f466775059c7e37fd819619e2177c65fa50ebf92d6f41472f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gosimilarity/releases/download/v0.0.4/gosimilarity_v0.0.4_darwin_amd64.zip'
      sha256 '1292a4c13a97adee215cb403a70c05050f487fc29fc40e31af2c381afd800edd'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gosimilarity/releases/download/v0.0.4/gosimilarity_v0.0.4_linux_arm64.tar.gz'
      sha256 '212186feba6341f8ce9ba6416d2e7defa9e062ee98fe3bc0d44f4ed9d1f567c9'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gosimilarity/releases/download/v0.0.4/gosimilarity_v0.0.4_linux_amd64.tar.gz'
      sha256 '9fe5688845b6d2cddb1027dbf6b6cb1fc056c45ae7dc41a7aabcd95c427977ee'
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
