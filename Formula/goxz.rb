class Goxz < Formula
  version '0.9.1'
  homepage 'https://github.com/Songmu/goxz'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/goxz/releases/download/v0.9.1/goxz_v0.9.1_darwin_arm64.zip'
      sha256 '9b78c0bdfdab4bed18e09c553651b8c053e2722fbbf1cff38e478d8ab1434598'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/goxz/releases/download/v0.9.1/goxz_v0.9.1_darwin_amd64.zip'
      sha256 '3d784bc4e1182a3f30b421bcc862b29a536463ec05f745b2b657ad7840b26216'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/goxz/releases/download/v0.9.1/goxz_v0.9.1_linux_arm64.tar.gz'
      sha256 '3950e8cdb3d48c858f78e9819267c2ce0fdea1b1d9d05c5341827587973dc5bb'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/goxz/releases/download/v0.9.1/goxz_v0.9.1_linux_amd64.tar.gz'
      sha256 'dfd633bc5799dcb92a4cb25fb9c6e36c2c92426362f3d45998a267eac117ce72'
    end
  end

  head do
    url 'https://github.com/Songmu/goxz.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'goxz'
  end
end
