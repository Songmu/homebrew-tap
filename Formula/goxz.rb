class Goxz < Formula
  version '0.11.1'
  homepage 'https://github.com/Songmu/goxz'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/goxz/releases/download/v0.11.1/goxz_v0.11.1_darwin_arm64.zip'
      sha256 'c62d6fdad0a7174279698ddd452acc1199c5a5dce754dab3007ab1775da13e88'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/goxz/releases/download/v0.11.1/goxz_v0.11.1_darwin_amd64.zip'
      sha256 'b743cead30e1a179e65c138f4293dc8934037a700fe8df8d8b210c10e1ca8d51'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/goxz/releases/download/v0.11.1/goxz_v0.11.1_linux_arm64.tar.gz'
      sha256 'bafc15838d651df2f6bf01f9e7d1fe9b9acd4855dff55d970539f21bb38f5dde'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/goxz/releases/download/v0.11.1/goxz_v0.11.1_linux_amd64.tar.gz'
      sha256 'a019c3dd620a89bd06346906f3ec744b158aaf671e9a313462f7037c72d51242'
    end
  end

  head do
    url 'https://github.com/Songmu/goxz.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'goxz'
  end
end
