class R2sync < Formula
  version '0.0.4'
  homepage 'https://github.com/Songmu/r2sync'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/r2sync/releases/download/v0.0.4/r2sync_v0.0.4_darwin_arm64.zip'
      sha256 '160e0826e2768a027f66531a9b309b77023bf3d01075ecd596e63723c2d59af4'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/r2sync/releases/download/v0.0.4/r2sync_v0.0.4_darwin_amd64.zip'
      sha256 '5235463723ee42057f33d8544b2bfc5e783514adb03e754e3996f2c6e95d31f3'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/r2sync/releases/download/v0.0.4/r2sync_v0.0.4_linux_arm64.tar.gz'
      sha256 'f117dabbcf14fdf0a37f4e3a89557fbec6e5ef23a71c788cbf3c10fdc3c96554'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/r2sync/releases/download/v0.0.4/r2sync_v0.0.4_linux_amd64.tar.gz'
      sha256 'aa673957963114d6dd86ec1212138eefb1ecf9f49525b76436e529625ab4f39f'
    end
  end

  head do
    url 'https://github.com/Songmu/r2sync.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'r2sync'
  end
end
