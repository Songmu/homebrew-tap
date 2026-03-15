class Fmd2json < Formula
  version '0.0.3'
  homepage 'https://github.com/Songmu/fmd2json'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.3/fmd2json_v0.0.3_darwin_arm64.zip'
      sha256 'd5f8eb9bd7c38993caa6e179a3eabeff011c1f81203c0c0952f636739c6aa4c5'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.3/fmd2json_v0.0.3_darwin_amd64.zip'
      sha256 'cb028d66f9e6e0c13d7a64ae6a97db9942228e80742a475c653d95c67b758855'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.3/fmd2json_v0.0.3_linux_arm64.tar.gz'
      sha256 'c9c8ce450870eb3848445494a94125c4bbfa43170de7d7d4b08855f44d053fb5'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.3/fmd2json_v0.0.3_linux_amd64.tar.gz'
      sha256 '162dc5097eb0b8137fcb5fcb86a657144fca321f811e6d2676d749eadb660aa8'
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
