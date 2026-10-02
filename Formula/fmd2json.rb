class Fmd2json < Formula
  version '0.0.7'
  homepage 'https://github.com/Songmu/fmd2json'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.7/fmd2json_v0.0.7_darwin_arm64.zip'
      sha256 'a9d6183bfdc36f61269150a839be5f3f137b4d66434b5ca3f39cda1d58068ece'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.7/fmd2json_v0.0.7_darwin_amd64.zip'
      sha256 '3cd997d17515592851bd15684dacdbe089520b0bd1f2b60e1ece414439037d2b'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.7/fmd2json_v0.0.7_linux_arm64.tar.gz'
      sha256 'a4e3e2a54f906e8da2a22e7279ceeccb5502d981d8c3f7a08cd15535be9a3cde'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.7/fmd2json_v0.0.7_linux_amd64.tar.gz'
      sha256 '398565cfc72ee12a6aea9b11f77cf3c68de745e918c661a9151993cb24e4f86f'
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
