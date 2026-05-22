class Ecschedule < Formula
  version '0.19.0'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.19.0/ecschedule_v0.19.0_darwin_arm64.zip'
      sha256 '8444b0a8aff03ff0f457c3ea14fcd99e7732c164aefd1a8fbb5889bad45026ef'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.19.0/ecschedule_v0.19.0_darwin_amd64.zip'
      sha256 'f5fba3f34021db29f05504ba9f0eaa035a2ce4390c52ca80889a4d7dc59ea2f8'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.19.0/ecschedule_v0.19.0_linux_arm64.tar.gz'
      sha256 '2301ea9adf41b871bd3af88c3bff90995e032d9da1fb61665f27cb3e51340add'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.19.0/ecschedule_v0.19.0_linux_amd64.tar.gz'
      sha256 'd2296fcf4b7eeadc01c99b88fd72e265bf16ae5a30c6a0d8bf2f23fb334b9024'
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
