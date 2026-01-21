class Gh2changelog < Formula
  version '0.5.0'
  homepage 'https://github.com/Songmu/gh2changelog'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.5.0/gh2changelog_v0.5.0_darwin_arm64.zip'
      sha256 '8ccef52c16090d965d57cc406a8642e00b14599452e70a5087984bf77ca5c014'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.5.0/gh2changelog_v0.5.0_darwin_amd64.zip'
      sha256 '20d0c1f1bc176258b09c255fe89dff740b68ce735a758f27d3c7e3d6a79fa681'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.5.0/gh2changelog_v0.5.0_linux_arm64.tar.gz'
      sha256 '1dde49b12ed576b55dc4ddb09da10d95d11234b01d127fa486091e09205bf6f4'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/gh2changelog/releases/download/v0.5.0/gh2changelog_v0.5.0_linux_amd64.tar.gz'
      sha256 '62d39bce873db1087d4ae2e410afe296fdc4f6c8f05c24a106caaf8180f77141'
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
