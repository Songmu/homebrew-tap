class Ecschedule < Formula
  version '0.21.1'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.21.1/ecschedule_v0.21.1_darwin_arm64.zip'
      sha256 'c0fbb442cc07c76fbefd4a7fcec24e514480e89b77519ec634ddea7c42659f31'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.21.1/ecschedule_v0.21.1_darwin_amd64.zip'
      sha256 '040a15fefa9d41b572b6377848ce8dcedfe0cb99642841f6c236f3e7e818ce29'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.21.1/ecschedule_v0.21.1_linux_arm64.tar.gz'
      sha256 'a1aafeb8ae4dcf9adc89443d230c0eca22556ed8549ee6c7554df9bdd105f554'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.21.1/ecschedule_v0.21.1_linux_amd64.tar.gz'
      sha256 'ced802aa69a1be2a2510d59db679bbfbca7647f97d19e23247ba508b86746e8d'
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
