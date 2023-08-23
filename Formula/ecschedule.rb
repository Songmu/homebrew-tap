class Ecschedule < Formula
  version '0.10.0'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.10.0/ecschedule_v0.10.0_darwin_arm64.zip'
      sha256 'c079e04e2457ef7a118919bf6ba0ca9cac6094847d56d0b33948d859009c34e3'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.10.0/ecschedule_v0.10.0_darwin_amd64.zip'
      sha256 'e232bcb1a19320bf191079a49d7c84748b22133c27138d3c83c1ca136e1bb49b'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.10.0/ecschedule_v0.10.0_linux_arm64.tar.gz'
      sha256 'e7888da821a3d849fe1094f03e0407e4a854873ab7fc062eeb58246bfd1c3f53'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.10.0/ecschedule_v0.10.0_linux_amd64.tar.gz'
      sha256 'fe08ef93da226ed05799235fe35fc1b6f9fe8a3740cb07272fd778434a5118b9'
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
