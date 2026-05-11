class Ecschedule < Formula
  version '0.18.2'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.18.2/ecschedule_v0.18.2_darwin_arm64.zip'
      sha256 '795898ec81edfabbc0e00259047c2231e675121aa1e930f6f979b29bae79f272'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.18.2/ecschedule_v0.18.2_darwin_amd64.zip'
      sha256 'c15025709bde0d5f9a1800e971437cac2768e8a68b0393c677ccb2c05098b3e2'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.18.2/ecschedule_v0.18.2_linux_arm64.tar.gz'
      sha256 '59ff3d49d62b5ffc7411dc55e6ddd560ccb97d52d2dee85c5822de402d190613'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.18.2/ecschedule_v0.18.2_linux_amd64.tar.gz'
      sha256 'b6ff85f8c03051f88a74d96ab0e7a9c750f63312767fce1ad30679589746493c'
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
