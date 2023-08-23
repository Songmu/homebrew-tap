class Godzil < Formula
  version '0.20.14'
  homepage 'https://github.com/Songmu/godzil'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/godzil/releases/download/v0.20.14/godzil_v0.20.14_darwin_arm64.zip'
      sha256 'c81a22fb7588e12489c0757d0a77a1b1fa53073af648647fd3f3f1bdd916dd31'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.20.14/godzil_v0.20.14_darwin_amd64.zip'
      sha256 '5c82de7c153a4c7de3a14fb900c698ad893af76f17bb29e7865a244e0ad68876'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/godzil/releases/download/v0.20.14/godzil_v0.20.14_linux_arm64.tar.gz'
      sha256 'f24388439ea58b175835ec95b3e79ce551cb7ea1400bd06bd8de3948ac2052f1'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.20.14/godzil_v0.20.14_linux_amd64.tar.gz'
      sha256 '07afc6084d0e4b84caa714a4289a731a6228f0415da1ab5141e74ddf611b2b2b'
    end
  end

  head do
    url 'https://github.com/Songmu/godzil.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'godzil'
  end
end
