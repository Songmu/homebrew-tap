class Chapel < Formula
  version '0.0.2'
  homepage 'https://github.com/Songmu/chapel'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/chapel/releases/download/v0.0.2/chapel_v0.0.2_darwin_arm64.zip'
      sha256 '2d1daf9087fac4fcb23a4fa870cabc4c4ed86e260f3758de49595a7fd224bec2'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/chapel/releases/download/v0.0.2/chapel_v0.0.2_darwin_amd64.zip'
      sha256 '0c0fe4fe21631eccccdf85d4ec8613f2da1e1aab52b55c4d2e21453f6bec3be1'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/chapel/releases/download/v0.0.2/chapel_v0.0.2_linux_arm64.tar.gz'
      sha256 '97f0e8cacb66f1d135ae7551d6b30d6fe34a53804d4307b1f3181ac958fefb34'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/chapel/releases/download/v0.0.2/chapel_v0.0.2_linux_amd64.tar.gz'
      sha256 '411e42057fb48d21c6dd60952e5cc647dede4d126616c01e2db62c7f7043ca00'
    end
  end

  head do
    url 'https://github.com/Songmu/chapel.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'chapel'
  end
end
