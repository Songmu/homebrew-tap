class Gh2changelog < Formula
  version '0.0.3'
  homepage 'https://github.com/Songmu/gh2changelog'
  if OS.mac?
    url "https://github.com/Songmu/gh2changelog/releases/download/v0.0.3/gh2changelog_v0.0.3_darwin_amd64.zip"
    sha256 '2147216587e9f53ea5ddfdba857c390223bea9d5f4a90dd460d2dff86945ed96'
  end
  if OS.linux?
    url "https://github.com/Songmu/gh2changelog/releases/download/v0.0.3/gh2changelog_v0.0.3_linux_amd64.tar.gz"
    sha256 'c7a206479340fc787811107ebe65e8c1df97cb89b4182b846b1a4c3c61373f0d'
  end
  head 'https://github.com/Songmu/gh2changelog.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gh2changelog'
  end
end
