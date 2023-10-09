class Ecschedule < Formula
  version '0.11.0'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.11.0/ecschedule_v0.11.0_darwin_arm64.zip'
      sha256 '6a4e4e21feafb6d0ec2e929cdde99acb8e3e7b02417f03a9f2a627bba847d9db'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.11.0/ecschedule_v0.11.0_darwin_amd64.zip'
      sha256 '0ad96a615e396e5482535b87170ffacba7a80fe8edcbe4dccea2086fb272728a'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.11.0/ecschedule_v0.11.0_linux_arm64.tar.gz'
      sha256 '43fa74e8b3b0ced2ffdc1330d6b6e23b43cc99935147913c486438aa55be7f83'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.11.0/ecschedule_v0.11.0_linux_amd64.tar.gz'
      sha256 'afa8fcab0aa675a15093863572f95bf2fc06a40cbdac9d39b14eef04cc42cb2c'
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
