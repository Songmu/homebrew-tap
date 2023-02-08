class Ecschedule < Formula
  version '0.9.0'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.9.0/ecschedule_v0.9.0_darwin_arm64.zip'
      sha256 '252c6ec36ebfba72e59a965b9fe8270256727edcc711e7305034c333d4b5c4c9'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.9.0/ecschedule_v0.9.0_darwin_amd64.zip'
      sha256 '88a5e8c6277fdca315e2f8185e9629976ff3b215fca2d4a9382be2f538e33a51'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.9.0/ecschedule_v0.9.0_linux_arm64.tar.gz'
      sha256 '6105ac778dcdb40385e74b30e4574656cf3f4c7bae8b4c5df4a65e9f8ea07265'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.9.0/ecschedule_v0.9.0_linux_amd64.tar.gz'
      sha256 '687bfbd50184e7109cfa9d8a1b553e4b843c2ed604a82ad8d71b58ec247237e6'
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
