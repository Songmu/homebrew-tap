class Ecschedule < Formula
  version '0.6.3'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.6.3/ecschedule_v0.6.3_darwin_arm64.zip'
      sha256 '8a05133351449feeb6c1d54199f0207afbb432f2303e1997fab99b66dda06986'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.6.3/ecschedule_v0.6.3_darwin_amd64.zip'
      sha256 '574802f21372d2360c7ab9bab5620af15882bec757953dd76314a3145b9d1f2f'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.6.3/ecschedule_v0.6.3_linux_arm64.tar.gz'
      sha256 '843eb84ace06c23deda5786db890273a08768518df4323d4bb3faf4ec35bd9c5'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.6.3/ecschedule_v0.6.3_linux_amd64.tar.gz'
      sha256 '549cd08ba29cb33544c2082cd9b2f9872706628c986badbdb3bd604394b86afe'
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
