class Godzil < Formula
  version '0.22.1'
  homepage 'https://github.com/Songmu/godzil'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/godzil/releases/download/v0.22.1/godzil_v0.22.1_darwin_arm64.zip'
      sha256 '5564e46ad08fde8f7cc034ccfe1d8814b23d69bf1e2f67f02844cdfffae367c2'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.22.1/godzil_v0.22.1_darwin_amd64.zip'
      sha256 'f7068fa4b07066e7b7814a71649c044e7a2acd5e6b91390e2ad8a49c5f020adb'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/godzil/releases/download/v0.22.1/godzil_v0.22.1_linux_arm64.tar.gz'
      sha256 'f33ffc5c9106333a418469e150077bf09fe5fe4c64f80269ff0a4a08f992e503'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.22.1/godzil_v0.22.1_linux_amd64.tar.gz'
      sha256 'd2cb36f300e12559cbb092b29709b2e60f58fc8a6409de3463b150780ad44f2a'
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
