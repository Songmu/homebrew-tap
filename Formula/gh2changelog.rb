class Gh2changelog < Formula
  version '0.7.1'
  homepage 'https://github.com/Songmu/gh2changelog'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.7.1/gh2changelog_v0.7.1_darwin_arm64.zip'
      sha256 '0815ecc14717477c41bfd184b795965e3f8ad6deacdc8d45dcfc596f216fa67e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.7.1/gh2changelog_v0.7.1_darwin_amd64.zip'
      sha256 '830261f5cc8c7b89c3b48f03aa9b6ec4aeb320399c07e861da45d1f196483f38'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.7.1/gh2changelog_v0.7.1_linux_arm64.tar.gz'
      sha256 'a0dc44a9a8a0911897621c4cef257d763352bb328de6c8bc3d6da3001514d914'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.7.1/gh2changelog_v0.7.1_linux_amd64.tar.gz'
      sha256 '6c7e1d075501a3e6a46ce738d348b2bb522e820ebe78333b6b6af95df6b5e5fb'
    end
  end

  head do
    url 'https://github.com/Songmu/gh2changelog.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gh2changelog'
  end
end
