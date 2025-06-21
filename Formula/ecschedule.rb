class Ecschedule < Formula
  version '0.14.0'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.14.0/ecschedule_v0.14.0_darwin_arm64.zip'
      sha256 '381cef3e77b060344f2d097b7cc81bf2debd3d61c0bfd29dca296348c653d526'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.14.0/ecschedule_v0.14.0_darwin_amd64.zip'
      sha256 '50a50118b4d57a5f42554a48f9a09c99cfa5fb7eac3fc570099082808d5b5148'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.14.0/ecschedule_v0.14.0_linux_arm64.tar.gz'
      sha256 'efd4584687bb30cc32b61bfd177fcefc5bbab499256d55066270946eb7da01ea'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.14.0/ecschedule_v0.14.0_linux_amd64.tar.gz'
      sha256 '8a4f50566ececb847fd4b5f1ed0e6b7319ea749572a0959ccfcae5263b27760a'
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
