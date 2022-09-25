class Godzil < Formula
  version '0.20.12'
  homepage 'https://github.com/Songmu/godzil'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/godzil/releases/download/v0.20.12/godzil_v0.20.12_darwin_arm64.zip'
      sha256 'be4eb8d3cf15813dd72f9cc104c71a920022d9de8846e0ec0b47d9791ddd95c4'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.20.12/godzil_v0.20.12_darwin_amd64.zip'
      sha256 '0fc5716e6bfab1ae23af16673a6f6ccb3add489602e5bbf249a2741c2069afe1'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/godzil/releases/download/v0.20.12/godzil_v0.20.12_linux_arm64.tar.gz'
      sha256 'cdf3b1ba5132c7030c46a958bc27e26fd2e7eeeb03cda2912a594e66acfb03ce'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.20.12/godzil_v0.20.12_linux_amd64.tar.gz'
      sha256 'c142d1abf4471065fe8b13fd4987e28495509fd0b407fa45fa5ddc14add98786'
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
