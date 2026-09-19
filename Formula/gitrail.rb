class Gitrail < Formula
  version '0.0.9'
  homepage 'https://github.com/Songmu/gitrail'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.9/gitrail_v0.0.9_darwin_arm64.zip'
      sha256 'dc3e047e9cac05c61e2e115f6e8702f2b33915c801f2e9458122268f52f42b7e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.9/gitrail_v0.0.9_darwin_amd64.zip'
      sha256 'e8748e4687c1945f39e9f83b17c4b9a79156ae9bb0ab9ea66b3ea19a71dae5fd'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.9/gitrail_v0.0.9_linux_arm64.tar.gz'
      sha256 '0af07297d682f605ec6e29ab4a6e1c8fa9334c91c154e0e6c97832c6a64294a0'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gitrail/releases/download/v0.0.9/gitrail_v0.0.9_linux_amd64.tar.gz'
      sha256 '7c6aba8c7a0c144e93c0d29adc6b8bc2031482c0a50bcebf322c369daf43a77e'
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
