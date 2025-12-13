class Gocredits < Formula
  version '0.4.0'
  homepage 'https://github.com/Songmu/gocredits'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gocredits/releases/download/v0.4.0/gocredits_v0.4.0_darwin_arm64.zip'
      sha256 'cf0a3a867bbcdb765deed385854c2412caae0e1b74ba495ac43e2734021a085d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gocredits/releases/download/v0.4.0/gocredits_v0.4.0_darwin_amd64.zip'
      sha256 'a0f275d152a85a82b4df6699c2a81f1024325e3a88a50628f667bc57cebf07e6'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gocredits/releases/download/v0.4.0/gocredits_v0.4.0_linux_arm64.tar.gz'
      sha256 'f7788a74702b4f2418664ff7b81ffc7132996474ee7d8f88ef243a7d3033c23b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gocredits/releases/download/v0.4.0/gocredits_v0.4.0_linux_amd64.tar.gz'
      sha256 '7b4a728038c621db56b7608ca0d438c3302c1726f429f3328f925bd0b52bc4a4'
    end
  end

  head do
    url 'https://github.com/Songmu/gocredits.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gocredits'
  end
end
