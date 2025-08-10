class Laminate < Formula
  desc 'A command-line bridge tool that orchestrates external image generation commands to convert text/code strings to images.'
  version '0.0.1'
  homepage 'https://github.com/Songmu/laminate'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/laminate/releases/download/v0.0.1/laminate_v0.0.1_darwin_arm64.zip'
      sha256 '5ea24ce26d501b7c31cbf9d861b63ac5c90bb300a57ab61ebdfca5bd8de861c1'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/laminate/releases/download/v0.0.1/laminate_v0.0.1_darwin_amd64.zip'
      sha256 '73dd02777a1cdfababef6f4133a8f11db6733eefe3f7f0b361ca8cd8169c5e9f'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/laminate/releases/download/v0.0.1/laminate_v0.0.1_linux_arm64.tar.gz'
      sha256 '492f173b7ff9ebc151bd5ca77414131401b242c53774e7a90d355fdcb3911b65'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/laminate/releases/download/v0.0.1/laminate_v0.0.1_linux_amd64.tar.gz'
      sha256 '63615c3d0ceb2f5fe7da8caeeef85c54257cf48c88ca0eaff20565f045008f89'
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
