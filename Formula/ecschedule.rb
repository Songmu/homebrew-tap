class Ecschedule < Formula
  version '0.17.2'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.17.2/ecschedule_v0.17.2_darwin_arm64.zip'
      sha256 '9cc32a2833e2f3c2bb9960c98065f50d9dda250cfd812bcf3b496d8faa9fc4f3'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.17.2/ecschedule_v0.17.2_darwin_amd64.zip'
      sha256 'ef715869aeb706c84afdb0796e87b297d3420a30697654ff304bc0d8e30b2889'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.17.2/ecschedule_v0.17.2_linux_arm64.tar.gz'
      sha256 'c469aba03f2593c5c0e77f96ac74c1d98b11d6a822d93e6fa6ed52dfa93fe0f7'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.17.2/ecschedule_v0.17.2_linux_amd64.tar.gz'
      sha256 'd87383c236e9233e357f2581ed7beac4bd9f694ce4f1361c324664a83ca5de2f'
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
