class Godzil < Formula
  version '0.21.1'
  homepage 'https://github.com/Songmu/godzil'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/godzil/releases/download/v0.21.1/godzil_v0.21.1_darwin_arm64.zip'
      sha256 'fc736aa91a3abf984ed72c7798f7d6eb7c52af57de1a4b1661950d025c671d48'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.21.1/godzil_v0.21.1_darwin_amd64.zip'
      sha256 'ee17e8398cf16d6e9ac6e5e6e42979cecc5bd7b4c03af36444429ad867277e3d'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/godzil/releases/download/v0.21.1/godzil_v0.21.1_linux_arm64.tar.gz'
      sha256 'b5ea5316dd20a113800fbb354ed513ae1f120db165ffcfbec297e9332ee19879'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.21.1/godzil_v0.21.1_linux_amd64.tar.gz'
      sha256 '20d4fc4de00bed1b1a71c961e50342397fc1f1f025e7ce2787e7b3bf82e2bb89'
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
