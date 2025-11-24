class Ecschedule < Formula
  version '0.17.1'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.17.1/ecschedule_v0.17.1_darwin_arm64.zip'
      sha256 '73e58aa8bed9bbb03d4a3fd1890c158ac20d3992e115970bc556be041e087059'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.17.1/ecschedule_v0.17.1_darwin_amd64.zip'
      sha256 '55d62b7685a1e6fd6865343f767767308147cd1c9e55ebfbebb7b252fc80444f'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.17.1/ecschedule_v0.17.1_linux_arm64.tar.gz'
      sha256 '875f4280d5f08c3a2679694d8e9be1b951714bd69e93649c037701e7f78424d9'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.17.1/ecschedule_v0.17.1_linux_amd64.tar.gz'
      sha256 '8e6d07e83d4b11e89585653f83b362d029f05c37392a8664313b46badaaa3e14'
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
