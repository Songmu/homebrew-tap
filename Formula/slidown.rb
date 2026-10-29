class Slidown < Formula
  version '0.0.12'
  homepage 'https://github.com/Songmu/slidown'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.12/slidown_v0.0.12_darwin_arm64.zip'
      sha256 'b7246897a045933ed2bbbc4bc3d0762883c66bc35e6dc05cad1856996451b663'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.12/slidown_v0.0.12_darwin_amd64.zip'
      sha256 'bcbcb7b001e733e126c873e2b641554dd806137f932c38f427583859ae4b68e4'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.12/slidown_v0.0.12_linux_arm64.tar.gz'
      sha256 'a8e28e26801332fd74d5dea94e7bdf394013054316779b2b9531d6d039d1a951'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.12/slidown_v0.0.12_linux_amd64.tar.gz'
      sha256 '7bc40d6f020f80d41e17e82d504cf17577b5dac41550d03594862f90233ccd4b'
    end
  end

  head do
    url 'https://github.com/Songmu/slidown.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'slidown'
  end

  test do
    system "#{bin}/slidown", '-h'
  end
end
