class Maltmill < Formula
  version '1.2.0'
  homepage 'https://github.com/Songmu/maltmill'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.2.0/maltmill_v1.2.0_darwin_arm64.zip'
      sha256 'a06c22250db1a5bcdb6a40926f490dbb18b8669f217b09cbb3a729744f65cc57'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.2.0/maltmill_v1.2.0_darwin_amd64.zip'
      sha256 '35a8b47315b165496a1d5972696b2439e6392bf2dee346df0a7af80d24e08daa'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.2.0/maltmill_v1.2.0_linux_arm64.tar.gz'
      sha256 '559b6da445b92009369b001b36522e597201f90c17471ce3bdf022509afa2a6d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.2.0/maltmill_v1.2.0_linux_amd64.tar.gz'
      sha256 'b9a3ca560ef508c97e0969d22eba800486f225e662c5c9a4a88c22c9d2436558'
    end
  end

  head do
    url 'https://github.com/Songmu/maltmill.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'maltmill'
  end
end
