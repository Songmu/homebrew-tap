class Slidown < Formula
  version '0.0.10'
  homepage 'https://github.com/Songmu/slidown'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.10/slidown_v0.0.10_darwin_arm64.zip'
      sha256 '7aef39bc4f3de97c822e95bf68fcc1073e6f32e0798e1e836883c1ade9b2b87c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.10/slidown_v0.0.10_darwin_amd64.zip'
      sha256 'a6f9e68b407fd186637dee7689f4f5f5af394b183222265508687350027b1a15'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.10/slidown_v0.0.10_linux_arm64.tar.gz'
      sha256 '44e4dc120c1964cb080d6037fcf2d6d3254fb68c51d5544e0ace7ddbdadc1f71'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.10/slidown_v0.0.10_linux_amd64.tar.gz'
      sha256 '445037bc6c8363cfb420751c691bb8537ed8a750cee8c0c4a6470208a72910f8'
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
