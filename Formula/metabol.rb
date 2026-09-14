class Metabol < Formula
  version '0.0.2'
  homepage 'https://github.com/Songmu/metabol'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.2/metabol_v0.0.2_darwin_arm64.zip'
      sha256 'ea2a52c2926888f58cb17863ca16fbcb9e1b3e5369abd92dabb524840db3b7b1'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.2/metabol_v0.0.2_darwin_amd64.zip'
      sha256 '7998632a9c926db7a906331c1aa3696d83c2eda788f774934704c7175b9cbc0d'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.2/metabol_v0.0.2_linux_arm64.tar.gz'
      sha256 'c404291fef2a6387144fa2a3760d6f0bee56f007f463cc57148b57b55c956aa1'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.2/metabol_v0.0.2_linux_amd64.tar.gz'
      sha256 '2370700479490020a1972477793754374482262382afabfc3428ce629cc124c7'
    end
  end

  head do
    url 'https://github.com/Songmu/metabol.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'metabol'
  end

  test do
    system "#{bin}/metabol", '-h'
  end
end
