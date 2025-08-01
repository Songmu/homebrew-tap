class Ecschedule < Formula
  version '0.15.1'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.15.1/ecschedule_v0.15.1_darwin_arm64.zip'
      sha256 '5e26c6d990abc0ab097382fddda55a50e1a1bf4b7b59bbabfa04da4d6477c5b6'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.15.1/ecschedule_v0.15.1_darwin_amd64.zip'
      sha256 '384a218b287b2af431924408fc11684f16fde155723a63f803b9a5ff84e82189'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.15.1/ecschedule_v0.15.1_linux_arm64.tar.gz'
      sha256 'fda6c08556fa451a3bf1241657d5a2ce64d0afc74ffd10cbc1e0332ac509539f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.15.1/ecschedule_v0.15.1_linux_amd64.tar.gz'
      sha256 '05a6702524cef3ddfd952263e38cb02896d43ab367d4ae1828c370dbada284f3'
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
