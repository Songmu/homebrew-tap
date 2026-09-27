class Gocredits < Formula
  version '1.0.0'
  homepage 'https://github.com/Songmu/gocredits'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gocredits/releases/download/v1.0.0/gocredits_v1.0.0_darwin_arm64.zip'
      sha256 '01ebfe97e36d80e4242703320dc9d549ff6e0fdc688caa9b7b292cfea65bb3cb'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gocredits/releases/download/v1.0.0/gocredits_v1.0.0_darwin_amd64.zip'
      sha256 '3a77f97d99f6d13eb71434d459d2fa7630b055dafd6af1cd05ca8574cd084b21'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gocredits/releases/download/v1.0.0/gocredits_v1.0.0_linux_arm64.tar.gz'
      sha256 'fcbaf33d2eda331b35d4b9a3c76e68429d14bfce23a02da5b636ba2c61078586'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gocredits/releases/download/v1.0.0/gocredits_v1.0.0_linux_amd64.tar.gz'
      sha256 '15962b32bd14a15d2001e6fbcc7d8a96f4b4281aac9de1b76b9d8d635e4c9046'
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
