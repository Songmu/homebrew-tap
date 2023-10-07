class Ecschedule < Formula
  version '0.10.3'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.10.3/ecschedule_v0.10.3_darwin_arm64.zip'
      sha256 '78fcfea9c4e74f3467c14346712d55f866196ae338d29797391b45b3a4e257ef'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.10.3/ecschedule_v0.10.3_darwin_amd64.zip'
      sha256 '00dbd4541a923a58e69b2cc7c6a0f9b2ecfeea6d9d87581413990fcdc110995d'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.10.3/ecschedule_v0.10.3_linux_arm64.tar.gz'
      sha256 '2e01fa9c41fb6ac05fdddd1a2d388c96b8c9495c98401bdd9f910ca6445fc7bb'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.10.3/ecschedule_v0.10.3_linux_amd64.tar.gz'
      sha256 '57abd7b4690db0323e7a264eed98dbfcb477a3c66faed110df0531ea40f59a64'
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
