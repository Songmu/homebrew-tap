class Ecschedule < Formula
  version '0.8.1'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.8.1/ecschedule_v0.8.1_darwin_arm64.zip'
      sha256 '6f4a6687435894b4c4602d833fd928884c93896f18af44fdab948c1fda6d0cb7'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.8.1/ecschedule_v0.8.1_darwin_amd64.zip'
      sha256 '956dccf03e79f1e7d07f9ed3940cc6c5f67e55722c79341bc18b86d22624c427'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.8.1/ecschedule_v0.8.1_linux_arm64.tar.gz'
      sha256 '610d47b41b483dc2006d5856275ebfaf2bebe2cb867183b7052b9cc83814b159'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.8.1/ecschedule_v0.8.1_linux_amd64.tar.gz'
      sha256 'dca13f9c525de3436b6743f811826f40890744a1bc1c46fadc81b6e88d1c3285'
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
