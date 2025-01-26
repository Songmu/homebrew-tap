class Ecschedule < Formula
  version '0.13.0'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.13.0/ecschedule_v0.13.0_darwin_arm64.zip'
      sha256 'd465a49072e9771623a406fa831eed7f2bbfdf19f2ce460a22a62ae7910e6504'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.13.0/ecschedule_v0.13.0_darwin_amd64.zip'
      sha256 'f22a8e3bbd91bd905fde162004454c93f134eaede6fc5257077f35992a8e81e0'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.13.0/ecschedule_v0.13.0_linux_arm64.tar.gz'
      sha256 '46b83c82cba1abf1f386c7d38c55672d7119e581a578ff6781e6fdc59520fac8'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.13.0/ecschedule_v0.13.0_linux_amd64.tar.gz'
      sha256 '27bc1c4c29b2dd02e4b80ca5705a28a5b88a449e300fc153586b4c26a9891365'
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
