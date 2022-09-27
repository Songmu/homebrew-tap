class Maltmill < Formula
  version '1.1.0'
  homepage 'https://github.com/Songmu/maltmill'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.1.0/maltmill_v1.1.0_darwin_arm64.zip'
      sha256 '79bc7c1899a30f3dbfe7179efb9ab373e0c36de926cf31266d77ed9e3a458995'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.1.0/maltmill_v1.1.0_darwin_amd64.zip'
      sha256 'e720082ff76c4c014cc0213e065d3c0517aecb4c020f5b7b38b702f8c94812ae'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.1.0/maltmill_v1.1.0_linux_arm64.tar.gz'
      sha256 '420cb8756e12bd6aa0d704c96c7ea86652d5836f5504ec572d5c9b28d85d370d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.1.0/maltmill_v1.1.0_linux_amd64.tar.gz'
      sha256 '0db033b8ed7b7a65aa75fa342e3e75cbd4948cf02d68186cd14fc123fd127300'
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
