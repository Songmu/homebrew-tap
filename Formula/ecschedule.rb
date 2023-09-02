class Ecschedule < Formula
  version '0.10.2'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.10.2/ecschedule_v0.10.2_darwin_arm64.zip'
      sha256 '97be75790b49d990334946a975483e9ea5d4a22321bcf0b4cdc75b799d7d3068'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.10.2/ecschedule_v0.10.2_darwin_amd64.zip'
      sha256 'b3cd94b113d1fe9550fcae016e1674befbbe7a8a0a6262ffb6c1cb03acc76caf'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.10.2/ecschedule_v0.10.2_linux_arm64.tar.gz'
      sha256 '206f49e86c27170c092ffd3389a08881c027923889c5f31f14171065e7743c5d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.10.2/ecschedule_v0.10.2_linux_amd64.tar.gz'
      sha256 '5c3230387442ab097912a74f020288eb8e52554ff75e1205cd48881aa6d66876'
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
