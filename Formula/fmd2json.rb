class Fmd2json < Formula
  version '0.0.5'
  homepage 'https://github.com/Songmu/fmd2json'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.5/fmd2json_v0.0.5_darwin_arm64.zip'
      sha256 'c70ff95639475bb665b3dec3319ce5454a540ade24dd54ab4c773137d795608f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.5/fmd2json_v0.0.5_darwin_amd64.zip'
      sha256 '11fdc6db63fa86a21bfd75ae8310390481c6004dc58b406a59a9c9d411376e99'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.5/fmd2json_v0.0.5_linux_arm64.tar.gz'
      sha256 '2c31d25f151344ac2a9ef21184fbbec5b49d27febe8a4724d9a31b38d29c4cce'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.5/fmd2json_v0.0.5_linux_amd64.tar.gz'
      sha256 '59f7aded2f7a83bb1920f81687b56aa2fc52a198ba83c8477abed441d0dda530'
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
