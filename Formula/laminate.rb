class Laminate < Formula
  desc 'A command-line bridge tool that orchestrates external image generation commands to convert text/code strings to images.'
  version '0.0.4'
  homepage 'https://github.com/Songmu/laminate'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/laminate/releases/download/v0.0.4/laminate_v0.0.4_darwin_arm64.zip'
      sha256 'fff6b2d2357a4fabc479283edce9304c864165d4e5da38782dbc26fd9b580abc'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/laminate/releases/download/v0.0.4/laminate_v0.0.4_darwin_amd64.zip'
      sha256 'e943f14c60a512e03d6b8401e18967973254307151929583f0a47b268f83ce41'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/laminate/releases/download/v0.0.4/laminate_v0.0.4_linux_arm64.tar.gz'
      sha256 'c4ae51cf413ae7b63db78ff2c54d5438507ed0afd666c5fdc37273f358f2f875'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/laminate/releases/download/v0.0.4/laminate_v0.0.4_linux_amd64.tar.gz'
      sha256 '0df96392b92c4024b78226285e5dda0e86cf466902b8d8c329bc3bb96d9d4cc2'
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
