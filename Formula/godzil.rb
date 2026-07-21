class Godzil < Formula
  version '0.22.0'
  homepage 'https://github.com/Songmu/godzil'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/godzil/releases/download/v0.22.0/godzil_v0.22.0_darwin_arm64.zip'
      sha256 'bb706359ed7e6df17d588c012349afe83c581ce7f19d6d0e4591f4b6f276ba5a'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.22.0/godzil_v0.22.0_darwin_amd64.zip'
      sha256 '3043c27da8307fd0d0e22edef4f7590ae743f5cdc766314ef3246fd1e1b827e5'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/godzil/releases/download/v0.22.0/godzil_v0.22.0_linux_arm64.tar.gz'
      sha256 '6108a836529d952482ed86904b8aa8a8b2896c7c428737f944a9e400a57f2ef2'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/godzil/releases/download/v0.22.0/godzil_v0.22.0_linux_amd64.tar.gz'
      sha256 '45d05bc72314667d8b002abb96438756fe1898e7d5c161300cdc9064510effdf'
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
