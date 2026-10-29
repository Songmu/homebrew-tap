class Slidown < Formula
  version '0.0.11'
  homepage 'https://github.com/Songmu/slidown'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.11/slidown_v0.0.11_darwin_arm64.zip'
      sha256 'de745dfc08b4810e8beaf6f7858871a76e43b87f3eec8e276a4347e8b90d6040'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.11/slidown_v0.0.11_darwin_amd64.zip'
      sha256 '654a7fcbc3fbd762bfaf66f3769ab8f373f5b2fd0278daddd578889ab5be6063'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.11/slidown_v0.0.11_linux_arm64.tar.gz'
      sha256 '685382685cd0dce8de64f74059835a77d8840920ce1f6b6067d23bf09429a16e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/slidown/releases/download/v0.0.11/slidown_v0.0.11_linux_amd64.tar.gz'
      sha256 '174fa1fd0eea6212eec7b574108fb7721480e82471a04cf0d7e1dad39aee328b'
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
