class Ecschedule < Formula
  version '0.13.1'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.13.1/ecschedule_v0.13.1_darwin_arm64.zip'
      sha256 '53543f63554d4d3fc33e833f9e16d972869bf37d6d51bb6b6cfaec22e1d3ee9d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.13.1/ecschedule_v0.13.1_darwin_amd64.zip'
      sha256 'fc393cf817231295a301ed555e0178f78b856446f06af3868a92176e794e11c4'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.13.1/ecschedule_v0.13.1_linux_arm64.tar.gz'
      sha256 '849e2644321a9aeefea21074e7056709dd50c7c0e9d8791e90fe32dfccd25163'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.13.1/ecschedule_v0.13.1_linux_amd64.tar.gz'
      sha256 'c0d06ac873d90f4175ba3eeb6d5b6d76c6d47c85247c263da692e03416b5d163'
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
