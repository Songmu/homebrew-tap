class Ecschedule < Formula
  version '0.8.0'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.8.0/ecschedule_v0.8.0_darwin_arm64.zip'
      sha256 'd69662dabc7bd5bb94c21280152eae1345fa134603c1b62b896adf236aa09d77'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.8.0/ecschedule_v0.8.0_darwin_amd64.zip'
      sha256 '44e5cee068d8483263e126e5369e651aca7583edaca2634ccfc8ab80634afc65'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.8.0/ecschedule_v0.8.0_linux_arm64.tar.gz'
      sha256 '9244a73f00d5d4ebea175b2e9a8f83d1ca86ef787ac38b24bd2a5f5c944ee04b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.8.0/ecschedule_v0.8.0_linux_amd64.tar.gz'
      sha256 '005590ee8a46fbc866d734feb9d11b038faee6627adb35f6b4b75c463002be55'
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
