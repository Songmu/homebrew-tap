class Metabol < Formula
  version '0.0.5'
  homepage 'https://github.com/Songmu/metabol'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.5/metabol_v0.0.5_darwin_arm64.zip'
      sha256 '5171fc0bcf4b928af8d8defa75c592677be74c925addcff1a741e8bdca4197a8'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.5/metabol_v0.0.5_darwin_amd64.zip'
      sha256 '4cbaf577dce0c066efbf9dcee5d7ad07e746f07dda9bef2c703f2e0ed923b3b9'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.5/metabol_v0.0.5_linux_arm64.tar.gz'
      sha256 '224e3167baf0ab3680bb29e4cb19142c45640f426e1b2900ada80c9a00b22c22'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.5/metabol_v0.0.5_linux_amd64.tar.gz'
      sha256 'a8ba1407ccf167ad11d8be46fa375da6552accfc37d83a37145a5472d20f425a'
    end
  end

  head do
    url 'https://github.com/Songmu/metabol.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'metabol'
  end

  test do
    system "#{bin}/metabol", '-h'
  end
end
