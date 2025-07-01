class Ecschedule < Formula
  version '0.15.0'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.15.0/ecschedule_v0.15.0_darwin_arm64.zip'
      sha256 '3dcf86029d65c4f17a0583f91e0e9167f2b2a6d056620d31c20d1e3cc2c20ff2'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.15.0/ecschedule_v0.15.0_darwin_amd64.zip'
      sha256 '9c5d58193b84c3df222fe20a22307d21cb5b098ed9328ab23d6693ad54db4e96'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.15.0/ecschedule_v0.15.0_linux_arm64.tar.gz'
      sha256 '8cc3f447cc59c6d22ec0e7f539a7a99fb84ab20e3e6855ce7f520618aa7a128d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.15.0/ecschedule_v0.15.0_linux_amd64.tar.gz'
      sha256 'eadba81bc1e193a13808e87eee6c0c7b1bf141d7d10e84581e1ef5d2d85f5e74'
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
