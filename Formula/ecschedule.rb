class Ecschedule < Formula
  version '0.12.0'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.12.0/ecschedule_v0.12.0_darwin_arm64.zip'
      sha256 'b4a97f9e868369147b584b8fbe4d9ce843e86a1533dadebbf0d141be08e1f6e9'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.12.0/ecschedule_v0.12.0_darwin_amd64.zip'
      sha256 '9c9a0b271945e4a8efa42c247377daeb0934cb6172b5284b15fe9c9152fc1892'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.12.0/ecschedule_v0.12.0_linux_arm64.tar.gz'
      sha256 '820be18e0b6fa356b79e7668c8a65fa080e8f7d90d5b1396288a2478ee2c268d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.12.0/ecschedule_v0.12.0_linux_amd64.tar.gz'
      sha256 '672cbf251108686d7b58b32338b503cac752ef3156d2046cf55c1e6ff5520dad'
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
