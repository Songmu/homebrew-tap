class Ecschedule < Formula
  version '0.15.3'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.15.3/ecschedule_v0.15.3_darwin_arm64.zip'
      sha256 '1cc5acf35afeb7895d7ca43248d87fc526532c35e6fdb0f7f45c386a891e194f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.15.3/ecschedule_v0.15.3_darwin_amd64.zip'
      sha256 '67d32f8a1d62ff052916e2066d0902b30e2445b50fe503c2cf69402135ac6459'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.15.3/ecschedule_v0.15.3_linux_arm64.tar.gz'
      sha256 'bc2b7ae53f6508d4677ad49c67839ffa699cbb158ae5c85f71d64d64531324c5'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.15.3/ecschedule_v0.15.3_linux_amd64.tar.gz'
      sha256 '3c7126c2e1530ea580cc0c04055bf481a5be6409cf0ed67043ca7eecabaa7a40'
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
