class Gitrail < Formula
  version '0.0.22'
  homepage 'https://github.com/Songmu/gitrail'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.22/gitrail_v0.0.22_darwin_arm64.zip'
      sha256 'ac32c930748032761111a89affbfc12b459c638b84a807e6cfba4e104e6632da'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.22/gitrail_v0.0.22_darwin_amd64.zip'
      sha256 '0e94da2a95ee722008cbe8dccb98834af868e6ced9f24a3284431adb3a796bc8'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.22/gitrail_v0.0.22_linux_arm64.tar.gz'
      sha256 '23ce9f17f774686ac93ed9f9133b6c92e68f4e5b61386f6c63c566587330f8c8'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.22/gitrail_v0.0.22_linux_amd64.tar.gz'
      sha256 '15ad19dbf25baf56254c0780d257c1374d9d91a876024049d64050b9148cbba4'
    end
  end

  head do
    url 'https://github.com/Songmu/gitrail.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'gitrail'
  end

  test do
    system "#{bin}/gitrail", '-h'
  end
end
