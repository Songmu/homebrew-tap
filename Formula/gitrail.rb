class Gitrail < Formula
  version '0.0.8'
  homepage 'https://github.com/Songmu/gitrail'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.8/gitrail_v0.0.8_darwin_arm64.zip'
      sha256 'e3a900d25c2dfe8037b0625e7f5f93734ffb833efed6ce1a2fcd3ebb9c6d3d6d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.8/gitrail_v0.0.8_darwin_amd64.zip'
      sha256 'f6fd744a10cde09c51fe6e0f12837a7ee4bb56bcec871f61cb9af9075aebe9af'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.8/gitrail_v0.0.8_linux_arm64.tar.gz'
      sha256 '2cf95555ba85dc930923d2f80462c487df04084c25274653d4f16a8025e49e33'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.8/gitrail_v0.0.8_linux_amd64.tar.gz'
      sha256 '50d77b9d2ed18ac3aae24a43e0922a922521be5593e8f1a1b20a64a669490704'
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
