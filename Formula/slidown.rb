class Slidown < Formula
  version '0.0.9'
  homepage 'https://github.com/Songmu/slidown'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.9/slidown_v0.0.9_darwin_arm64.zip'
      sha256 '3abb9a54aadcb660464642229a16edda1247ebddf20c7d8f11c503052d298541'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.9/slidown_v0.0.9_darwin_amd64.zip'
      sha256 'd6b1a343246967e99ca0eb4a08658433b9d9fe661814ca1e94ddcfc85f611d4c'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.9/slidown_v0.0.9_linux_arm64.tar.gz'
      sha256 '0d676cc6a05dcf28450101675d89f804b73f43da3dd029eb0e4a042da05f60fb'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.9/slidown_v0.0.9_linux_amd64.tar.gz'
      sha256 '39eff5e35251c30bdfcf5b39f99bd2c694bf7d7b30f6420b74565a4b65209cf6'
    end
  end

  head do
    url 'https://github.com/Songmu/slidown.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'slidown'
  end

  test do
    system "#{bin}/slidown", '-h'
  end
end
