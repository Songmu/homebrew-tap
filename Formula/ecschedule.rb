class Ecschedule < Formula
  version '0.7.1'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.7.1/ecschedule_v0.7.1_darwin_arm64.zip'
      sha256 '5e4dde3a39f8a9c18297df864227df73869f40b5eecd1afcfc7d4dc565b5fc7e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.7.1/ecschedule_v0.7.1_darwin_amd64.zip'
      sha256 'dfd46e669e57e8dd739e0ae8ae01faa8962ac1a964c56a550a9e1107a56946dd'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.7.1/ecschedule_v0.7.1_linux_arm64.tar.gz'
      sha256 '93f0b8488a30049fe734847225009924fd85614e8a223cf7ff0259b72991628f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.7.1/ecschedule_v0.7.1_linux_amd64.tar.gz'
      sha256 '4b820bb9aded2c516c6e7afa87d9f3fda4ad4d3405669b08b1759da7a02a0af7'
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
