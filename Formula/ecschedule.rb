class Ecschedule < Formula
  version '0.11.4'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.11.4/ecschedule_v0.11.4_darwin_arm64.zip'
      sha256 '14b7d09ffc73c677d8d3dcec9b44ff3de85da4db46b8412c5d29d2cbdf3c84bb'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.11.4/ecschedule_v0.11.4_darwin_amd64.zip'
      sha256 'e6e7b3b1208573ee0955d54a78dc736c20a785ba7efad726a0828ee4b2c94479'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.11.4/ecschedule_v0.11.4_linux_arm64.tar.gz'
      sha256 'a49c2055ccd8e77fe8577c72bf91f21abf398f9ac2538a86f107fca756f4c2c7'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.11.4/ecschedule_v0.11.4_linux_amd64.tar.gz'
      sha256 'a72dc31ac3f6c1271a1a3023def7ec6b9774be1b24aaf779b79756be8576153e'
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
