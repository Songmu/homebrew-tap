class Godzil < Formula
  version '0.23.2'
  homepage 'https://github.com/Songmu/godzil'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/godzil/releases/download/v0.23.2/godzil_v0.23.2_darwin_arm64.zip'
      sha256 '7626cc4672a30443365cabc2cb00935c83762db5a73327375df7c5352237e74c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.23.2/godzil_v0.23.2_darwin_amd64.zip'
      sha256 '5f241584bd2eecaa057aaf9325987a9be0c453bd4854dbff784351157098ef14'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/godzil/releases/download/v0.23.2/godzil_v0.23.2_linux_arm64.tar.gz'
      sha256 'b1a979d913a8adadb741e87b29e9393f367ebc2e57f0debd2111abb8de2d2b41'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.23.2/godzil_v0.23.2_linux_amd64.tar.gz'
      sha256 'e700e98760dea08faa74f2dadfca0b25a91e216255408775f0fee39627f380d8'
    end
  end

  head do
    url 'https://github.com/Songmu/godzil.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'godzil'
  end
end
