class Ecschedule < Formula
  version '0.20.0'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.20.0/ecschedule_v0.20.0_darwin_arm64.zip'
      sha256 '7c0a1041b7548bd38345d659065b7f0cff5c5d0111f9330c5d048ffcc804988b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.20.0/ecschedule_v0.20.0_darwin_amd64.zip'
      sha256 '81a2b62502d5ce2874619f136516e432644420c240820a8c044ed65f3079ad5b'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.20.0/ecschedule_v0.20.0_linux_arm64.tar.gz'
      sha256 'd74a20758cf7be9f3add960b5960fe23ac5542be40c9a7b6089c450e5cffe7be'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.20.0/ecschedule_v0.20.0_linux_amd64.tar.gz'
      sha256 'd312d155768c8c32353ab4e1deb04c1c0c7ea404d4747f60dd48079ee1f887ad'
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
