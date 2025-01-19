class Podbard < Formula
  version '0.0.16'
  homepage 'https://github.com/Songmu/podbard'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.16/podbard_v0.0.16_darwin_arm64.zip'
      sha256 'ebbac4fdcad54502280fe03c991dfaa0827edc5416499a6fa56782e1226c207c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.16/podbard_v0.0.16_darwin_amd64.zip'
      sha256 '70a5d2f0cb7ce2631ebc12a447a50fabf7329a45fd9d557907f4314cedfee9d6'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.16/podbard_v0.0.16_linux_arm64.tar.gz'
      sha256 'c7094b697df428d4d09f815712fa7b7100a3a11a429d9d0ad0b37ecf04f908e7'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.16/podbard_v0.0.16_linux_amd64.tar.gz'
      sha256 '3d76a70501be817257938abc2cce383dfd63eee4fc525d067898051e17b6d56e'
    end
  end

  head do
    url 'https://github.com/Songmu/podbard.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'podbard'
  end
end
