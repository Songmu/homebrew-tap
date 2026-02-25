class Fmd2json < Formula
  version '0.0.1'
  homepage 'https://github.com/Songmu/fmd2json'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.1/fmd2json_v0.0.1_darwin_arm64.zip'
      sha256 'e5a1dd056c08fa785671dfcc3212a22de2ca4dc43aff7dd32293ccb93004ad38'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.1/fmd2json_v0.0.1_darwin_amd64.zip'
      sha256 '40fb6718ab94ac6d6388e0ef83cdd5db03590e916efde385fac36d4564b42230'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.1/fmd2json_v0.0.1_linux_arm64.tar.gz'
      sha256 'ff05599bb699ebdf8307a4e420c87978334f5efdffd9f69746ba661c925371cb'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.1/fmd2json_v0.0.1_linux_amd64.tar.gz'
      sha256 '7fbdceed55d1ac09c2f32805324f2dd431477e7dc86ec9f6458189b7783ed363'
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
end
