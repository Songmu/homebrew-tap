class Ecschedule < Formula
  version '0.16.0'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.16.0/ecschedule_v0.16.0_darwin_arm64.zip'
      sha256 'a1d7786b3c016fa955935f03329a198dbf4e5600a72a3e0d3bc88bd549928eed'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.16.0/ecschedule_v0.16.0_darwin_amd64.zip'
      sha256 'd781842bd01b04ce65405f878301746fe96df366711e1c30483a3e09f5d50677'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.16.0/ecschedule_v0.16.0_linux_arm64.tar.gz'
      sha256 '654b4ff450c9fdb75b6274aa553ed2ba0eefabf97da2f1ee318714601ff7c205'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.16.0/ecschedule_v0.16.0_linux_amd64.tar.gz'
      sha256 '6dba2c23ba38f5ffc3c856f6071f1f5a0135b4fb1397a9596fd78d13ffcf3033'
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
