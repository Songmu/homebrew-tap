class Maltmill < Formula
  version '1.5.0'
  homepage 'https://github.com/Songmu/maltmill'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.5.0/maltmill_v1.5.0_darwin_arm64.zip'
      sha256 'd1adee9f73487db8b27f33dc3c3ac3e7833d1f377def549a77ff46ef36447cfc'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.5.0/maltmill_v1.5.0_darwin_amd64.zip'
      sha256 '611a96b2bd5727fa708267bf65fc872803696c561c0b493a89d6ed96479e1b7a'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.5.0/maltmill_v1.5.0_linux_arm64.tar.gz'
      sha256 '83eff8b676614baecc9fe32be04627502caddea85b7a09d617a300f94a26ff8a'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.5.0/maltmill_v1.5.0_linux_amd64.tar.gz'
      sha256 '30baaa14ffbf57cee77030cdc639ad561bac7ce2f40bb8e65333ba80e4032247'
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
