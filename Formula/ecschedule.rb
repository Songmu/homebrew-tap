class Ecschedule < Formula
  version '0.10.1'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.10.1/ecschedule_v0.10.1_darwin_arm64.zip'
      sha256 '00fce196ea14ab30f7b13525ea2945438eada30e2a8d388ea4313f075013728d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.10.1/ecschedule_v0.10.1_darwin_amd64.zip'
      sha256 'e9494049d6adb18579238aaefd7d401b65d401dd56bbfa15836f6f2a4fe2d645'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.10.1/ecschedule_v0.10.1_linux_arm64.tar.gz'
      sha256 '66cb52a4305778a71a7ddb91d9872aafd0b47dee93cda8c07393185a37c73797'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.10.1/ecschedule_v0.10.1_linux_amd64.tar.gz'
      sha256 '86f9b9b279c678d262fede7e3289a9d0ffe60bf2fcce0a385d582581e723df50'
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
