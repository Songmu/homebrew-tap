class Gh2changelog < Formula
  version '0.2.0'
  homepage 'https://github.com/Songmu/gh2changelog'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.2.0/gh2changelog_v0.2.0_darwin_arm64.zip'
      sha256 '4e1b64c94dbdc37ecc2ba0358c53b47352634ffd2e333a585a118c5113475ec7'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.2.0/gh2changelog_v0.2.0_darwin_amd64.zip'
      sha256 'ecd2e45a95fd5a7fc32afa47a094d37da25eff48d4fa5804a7ce6084eb2683d8'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.2.0/gh2changelog_v0.2.0_linux_arm64.tar.gz'
      sha256 '10f94106056fbfad478ba0a807645cb47fd372b4cabc5ed9cf24aad345ca96a1'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.2.0/gh2changelog_v0.2.0_linux_amd64.tar.gz'
      sha256 'de9a60f432313662906d528e9be8d11e4a1c4549614d664dbfc3d8adc7d731a3'
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
