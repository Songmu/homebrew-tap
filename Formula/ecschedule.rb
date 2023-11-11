class Ecschedule < Formula
  version '0.11.2'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.11.2/ecschedule_v0.11.2_darwin_arm64.zip'
      sha256 'f4b94a8fcb90d07368d77dc8421b25ddb8c496b727d96ca40ca56e6159a50169'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.11.2/ecschedule_v0.11.2_darwin_amd64.zip'
      sha256 '47590f241b38a9479cbbbcc4012abfd7c8c59ce5a95e81e5cde4163623290081'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.11.2/ecschedule_v0.11.2_linux_arm64.tar.gz'
      sha256 'a94263907deb557b30178a94c4b9d7cc9943c1796bf11eb133ae6507262b415d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.11.2/ecschedule_v0.11.2_linux_amd64.tar.gz'
      sha256 'fc006643d54a24f6d8205fc8b9c28f21d27050d18a1e1bc8ec388a4b10b4ac52'
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
