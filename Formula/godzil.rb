class Godzil < Formula
  version '0.23.0'
  homepage 'https://github.com/Songmu/godzil'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/godzil/releases/download/v0.23.0/godzil_v0.23.0_darwin_arm64.zip'
      sha256 'ca7edb6946fc88241648c30d5cf033fc17594c4d7c31b52023c1a19e98af4189'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.23.0/godzil_v0.23.0_darwin_amd64.zip'
      sha256 '86fc880789e1973fb0d6724063397b7e129ba69d099b8a8353bf407d50e4aa39'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/godzil/releases/download/v0.23.0/godzil_v0.23.0_linux_arm64.tar.gz'
      sha256 '7b3dfb4216c93b7192be993ad8e80de8e8777e2e79711622c826be44d2b83f79'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.23.0/godzil_v0.23.0_linux_amd64.tar.gz'
      sha256 'a9121cde0100f33d07f6d82e9d7690b8eee9dbbe72f1c19c1f4138ae9e89b669'
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
