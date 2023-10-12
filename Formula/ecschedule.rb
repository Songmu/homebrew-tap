class Ecschedule < Formula
  version '0.11.1'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.11.1/ecschedule_v0.11.1_darwin_arm64.zip'
      sha256 '8c30998a6f2dad9a50f232a5bf7418bee1737692d3a23659e40051f80d1ce024'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.11.1/ecschedule_v0.11.1_darwin_amd64.zip'
      sha256 '7a446daa17d1c8c0dc4308b4b3064be7aeb981494ac657dc3837db11dc7711fb'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.11.1/ecschedule_v0.11.1_linux_arm64.tar.gz'
      sha256 '501b5867b3290545c085d51631186def638e8e62262ec4698f5439893cdd8ba9'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.11.1/ecschedule_v0.11.1_linux_amd64.tar.gz'
      sha256 'f079058e6c932f6d4c79f8d471ba12db573e45ed8c75460bfcd68b8a62e11fbe'
    end
  end

  head do
    url 'https://github.com/Songmu/ecschedule.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'ecschedule'
  end
end
