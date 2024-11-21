class Gh2changelog < Formula
  version '0.1.0'
  homepage 'https://github.com/Songmu/gh2changelog'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.1.0/gh2changelog_v0.1.0_darwin_arm64.zip'
      sha256 '2b5c10d96f79c414ba8da4c51fb6916715cf9e53be8aa31dc0d314f75c8a61e3'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.1.0/gh2changelog_v0.1.0_darwin_amd64.zip'
      sha256 '5886300b2380778df5bab8d7183036d08f3f15bf9662822f26a868ceb7acbb10'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.1.0/gh2changelog_v0.1.0_linux_arm64.tar.gz'
      sha256 '0d16050131cd4e218cdfdc5fc32f7888121fb6045fae9c0b648d88d603a1df75'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.1.0/gh2changelog_v0.1.0_linux_amd64.tar.gz'
      sha256 '7ebc403434372b0b5782e2439b3683824ae5932b9c275d66eb41b65d92d38779'
    end
  end

  head do
    url 'https://github.com/Songmu/gh2changelog.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gh2changelog'
  end
end
