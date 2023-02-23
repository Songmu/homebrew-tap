class Ecschedule < Formula
  version '0.9.1'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.9.1/ecschedule_v0.9.1_darwin_arm64.zip'
      sha256 '4efc7ab46a71720236b5e188841b0106c2ad8d15994ea021142e89c20f9c2f4c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.9.1/ecschedule_v0.9.1_darwin_amd64.zip'
      sha256 '5ee99cff6784decf096f2a6d3845e7aa54672e7b60f138bf861b11f2630dca52'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.9.1/ecschedule_v0.9.1_linux_arm64.tar.gz'
      sha256 '1e80d73753a6650182d4c55f40663c85fdeea2c46dc79ef8805bd1b601a0874e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.9.1/ecschedule_v0.9.1_linux_amd64.tar.gz'
      sha256 '843225ff837ac5828d3c79d9f57a85e812f42661c2da0630b452338327041284'
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
