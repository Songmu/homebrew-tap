class Ecschedule < Formula
  version '0.17.0'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.17.0/ecschedule_v0.17.0_darwin_arm64.zip'
      sha256 'd7a4a8f192d4028b1b184d406dcef68c2736b3ebb82b8b1efb7b559aac34eace'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.17.0/ecschedule_v0.17.0_darwin_amd64.zip'
      sha256 'b7154d25deb502ea5f9c65bdea0828d3bf413660a5c78fd1ef10f8ad448b8861'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.17.0/ecschedule_v0.17.0_linux_arm64.tar.gz'
      sha256 '1640317d89e2a6d1865292cf1ec339a008d10d339d08aafc026b06dce0d6aef3'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.17.0/ecschedule_v0.17.0_linux_amd64.tar.gz'
      sha256 'b898c69b3ea51996d118417f8dfb3af943136533341c5261bd29f63c893ad1f7'
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
