class Laminate < Formula
  desc 'A command-line bridge tool that orchestrates external image generation commands to convert text/code strings to images.'
  version '0.0.2'
  homepage 'https://github.com/Songmu/laminate'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/laminate/releases/download/v0.0.2/laminate_v0.0.2_darwin_arm64.zip'
      sha256 '4aafaa9773fdae6932c13e9d3014905148109874d118ce8b730e733a4ca71a5b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/laminate/releases/download/v0.0.2/laminate_v0.0.2_darwin_amd64.zip'
      sha256 '1bd9550d39ca84504e4d6c2394bcadf84f2a63132ee8a279f964609a80b38011'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/laminate/releases/download/v0.0.2/laminate_v0.0.2_linux_arm64.tar.gz'
      sha256 '0f011cdb07547a5a1ff16e934b851ce38c9885af53c6de8764db2c623b20ad07'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/laminate/releases/download/v0.0.2/laminate_v0.0.2_linux_amd64.tar.gz'
      sha256 '9c22d968b0ddb9667f37e6bf3a0f4864f25c86028992e597921ae29c02441ced'
    end
  end

  head do
    url 'https://github.com/Songmu/laminate.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'laminate'
  end
end
