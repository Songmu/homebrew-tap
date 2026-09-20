class Gocredits < Formula
  version '0.5.0'
  homepage 'https://github.com/Songmu/gocredits'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gocredits/releases/download/v0.5.0/gocredits_v0.5.0_darwin_arm64.zip'
      sha256 '8c156c5e53ed981d486ab968be1f412621cfb926304018bcbe1d75c9d7d639a0'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gocredits/releases/download/v0.5.0/gocredits_v0.5.0_darwin_amd64.zip'
      sha256 'e7395c8fbe31572b25f3de58088f1bd770c17c1d8c9e70b1f216d1c14dcbb419'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gocredits/releases/download/v0.5.0/gocredits_v0.5.0_linux_arm64.tar.gz'
      sha256 '0b0b519ded1467b78445ab1b2d61d4c6079759c757939d847dc845984d1144f0'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gocredits/releases/download/v0.5.0/gocredits_v0.5.0_linux_amd64.tar.gz'
      sha256 'b54ed76e6471c441d4012c33d13bd4351396f73f5f5984711a008f5a2b84be9d'
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
