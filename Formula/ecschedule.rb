class Ecschedule < Formula
  version '0.7.2'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.7.2/ecschedule_v0.7.2_darwin_arm64.zip'
      sha256 'cca019e32dfdc019085a03a98a7cde29f6fcedfe0d269433de9ec3795223325a'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.7.2/ecschedule_v0.7.2_darwin_amd64.zip'
      sha256 'dbd82af32692e6f1724758a04c5f7615ce868fb36ca6fb67a9574683f9b5d0bc'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.7.2/ecschedule_v0.7.2_linux_arm64.tar.gz'
      sha256 '6afb88dab4fadd8644cfaf0cdbfa5a505bf6f7ac339190d43eae866a024d9022'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.7.2/ecschedule_v0.7.2_linux_amd64.tar.gz'
      sha256 'a6921f4b99e8230507549a421b7b7018fa789477a361aaa79a13e40982eddd82'
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
