class Gitrail < Formula
  version '0.0.21'
  homepage 'https://github.com/Songmu/gitrail'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.21/gitrail_v0.0.21_darwin_arm64.zip'
      sha256 '004cdddab46a9eac65b1c75ef405de6f286038c1c327f89de0dddf30dd97b3ff'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.21/gitrail_v0.0.21_darwin_amd64.zip'
      sha256 '7ab28cfc8f8a684560804156240aa795eea7c41ac20e414fbfde0107363fb914'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.21/gitrail_v0.0.21_linux_arm64.tar.gz'
      sha256 '1aff299b2a12033f6877b521a22434ad573540dedb926b8f80bc83325e2c5c06'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.21/gitrail_v0.0.21_linux_amd64.tar.gz'
      sha256 'da756d7af3c0cc5ae345e0f67dc79661d959925d0b47c43543f56d1b5c7f5bbe'
    end
  end

  head do
    url 'https://github.com/Songmu/gitrail.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gitrail'
  end

  test do
    system "#{bin}/gitrail", '-h'
  end
end
