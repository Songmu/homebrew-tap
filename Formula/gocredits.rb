class Gocredits < Formula
  version '0.2.0'
  homepage 'https://github.com/Songmu/gocredits'

  on_macos do
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gocredits/releases/download/v0.2.0/gocredits_v0.2.0_darwin_amd64.zip'
      sha256 '15657779dd182af82402d2c7c151c8b78a9080c9d4c93fc3d769f42902c166dc'
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gocredits/releases/download/v0.2.0/gocredits_v0.2.0_linux_amd64.tar.gz'
      sha256 '0f8e6c3a131d69ff8203dbc13f9d190cf42872efb0848a093beb7a383ddc496a'
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
