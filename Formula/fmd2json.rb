class Fmd2json < Formula
  version '0.0.6'
  homepage 'https://github.com/Songmu/fmd2json'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.6/fmd2json_v0.0.6_darwin_arm64.zip'
      sha256 '9df1a8808d535df4eada7ac776fb78e62c91c91d6994a4c694da22695ff08f7d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.6/fmd2json_v0.0.6_darwin_amd64.zip'
      sha256 'd1e598483b4eed5e86fcab6935c2cb064488a61c7626126590a35b5166b2445f'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.6/fmd2json_v0.0.6_linux_arm64.tar.gz'
      sha256 '26fcd5aaae958c01dd007bae99d8f18a83ca74c88d1f4645195efebaa1b72e05'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.6/fmd2json_v0.0.6_linux_amd64.tar.gz'
      sha256 '29443aa31c6b8f7d95a9086f9cae151876c8c2ce7f19598367e52891bbb2fe5b'
    end
  end

  head do
    url 'https://github.com/Songmu/fmd2json.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'fmd2json'
  end

  test do
    system "#{bin}/fmd2json", '-h'
  end
end
