class Maltmill < Formula
  version '1.0.1'
  homepage 'https://github.com/Songmu/maltmill'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.0.1/maltmill_v1.0.1_darwin_arm64.zip'
      sha256 '01ce60334145c90fd1804b8be03f6ee7d9d0670b7def147d4af82e50115024ce'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.0.1/maltmill_v1.0.1_darwin_amd64.zip'
      sha256 '205a6f029aff401897e2f352d6512ac8ebe6e210863395917eb0b6273c022c66'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.0.1/maltmill_v1.0.1_linux_arm64.tar.gz'
      sha256 '7b57024601afb1471203b9a5056fc59c245de4f2017ccf3696bb0670449013e4'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.0.1/maltmill_v1.0.1_linux_amd64.tar.gz'
      sha256 '919214a44e34159b97f13e6b8b477b5adbe374f7ac4204e545008dba2c9226dc'
    end
  end

  head do
    url 'https://github.com/Songmu/maltmill.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'maltmill'
  end
end
