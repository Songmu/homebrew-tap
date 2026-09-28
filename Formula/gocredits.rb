class Gocredits < Formula
  version '1.0.1'
  homepage 'https://github.com/Songmu/gocredits'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gocredits/releases/download/v1.0.1/gocredits_v1.0.1_darwin_arm64.zip'
      sha256 '01ffea4186692f6e5efa66bbe793652352a2d71bd1ae1895459299895b35f76b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gocredits/releases/download/v1.0.1/gocredits_v1.0.1_darwin_amd64.zip'
      sha256 'a7c457a456cbd14dee050b061b1b57a42b4ed7934769da218a50ff07593e7d0f'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gocredits/releases/download/v1.0.1/gocredits_v1.0.1_linux_arm64.tar.gz'
      sha256 'c901453ada636e50d86f58d181044c24fa8912f24e6c83e389dc700034a43bcb'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gocredits/releases/download/v1.0.1/gocredits_v1.0.1_linux_amd64.tar.gz'
      sha256 'fb14339ecf522e89e67187a6abe64eaaf0c49b0385121cb60da5d196dfe83af5'
    end
  end

  head do
    url 'https://github.com/Songmu/gocredits.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gocredits'
  end
end
