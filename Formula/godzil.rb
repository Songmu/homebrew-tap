class Godzil < Formula
  version '0.21.2'
  homepage 'https://github.com/Songmu/godzil'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/godzil/releases/download/v0.21.2/godzil_v0.21.2_darwin_arm64.zip'
      sha256 '0dc34de6cb6c194f1c5db3a109988e29eb60a216a214646e351de8b30f237aa8'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.21.2/godzil_v0.21.2_darwin_amd64.zip'
      sha256 'aee46e4b42294a5072e1d896bc12e2c5a603840d0144b49e6d34d309bd147b50'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/godzil/releases/download/v0.21.2/godzil_v0.21.2_linux_arm64.tar.gz'
      sha256 '5ec59dfa77deb42999d657eebc7ad0ede5a16bc21ff80f4e72e4f1d8287ef59d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.21.2/godzil_v0.21.2_linux_amd64.tar.gz'
      sha256 '5e970ce364f6f949fe02abd5106406a6c2f032274c55f80a3aa9d4f1fb9fdca7'
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
