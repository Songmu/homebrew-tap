class Maltmill < Formula
  version '1.3.0'
  homepage 'https://github.com/Songmu/maltmill'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.3.0/maltmill_v1.3.0_darwin_arm64.zip'
      sha256 '9812d00fca69ca2acc6927185b2b2f3b2c8c0c08b534c640e039f85cb82829d0'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.3.0/maltmill_v1.3.0_darwin_amd64.zip'
      sha256 '4eb80c1a3c640606e5e9ce966493c566c862dc1ea71c283978168ea1db131b63'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.3.0/maltmill_v1.3.0_linux_arm64.tar.gz'
      sha256 '4c68854cf7770ebd9faac804803821f5988a89de5d86bb0f1c07cb8eeb85a741'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.3.0/maltmill_v1.3.0_linux_amd64.tar.gz'
      sha256 '9408a4228717d2f65edc28bea62a22c493a668c2f8a45febb7266fa8ef2248b6'
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
