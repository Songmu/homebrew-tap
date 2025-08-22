class Chapel < Formula
  version '0.0.1'
  homepage 'https://github.com/Songmu/chapel'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/chapel/releases/download/v0.0.1/chapel_v0.0.1_darwin_arm64.zip'
      sha256 'b34d016add26e6fab172e16318e74be65b3a38b3fa88292472e9ca9f44d9c8ae'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/chapel/releases/download/v0.0.1/chapel_v0.0.1_darwin_amd64.zip'
      sha256 '678dfe917b6165076b653ee94825b9e4eaa865f5cd236b3e5e34a68abd87a3d7'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/chapel/releases/download/v0.0.1/chapel_v0.0.1_linux_arm64.tar.gz'
      sha256 '9a94efc68c7b9e70921f432fe1227448f83d00563d0fc1b67a2475216dc4d1ab'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/chapel/releases/download/v0.0.1/chapel_v0.0.1_linux_amd64.tar.gz'
      sha256 '00275f375e4f2db1ff4a5325357aa6d40d1a7188e028a3521667607e9022d40f'
    end
  end

  head do
    url 'https://github.com/Songmu/chapel.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'chapel'
  end
end
