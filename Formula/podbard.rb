class Podbard < Formula
  version '0.0.4'
  homepage 'https://github.com/Songmu/podbard'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.4/podbard_v0.0.4_darwin_arm64.zip'
      sha256 '6b971e65a9e1aa60d33557aa8a831f6eb6bf92524bbace00086f6f3acebb4239'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.4/podbard_v0.0.4_darwin_amd64.zip'
      sha256 '3a9084c1b55a8000424a46621f3f094d5a8a2401776bf09792cba1b334f29368'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.4/podbard_v0.0.4_linux_arm64.tar.gz'
      sha256 'bcab212098528027284b15152810762f4e53b06988210591a3f419f38ab17a22'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/podbard/releases/download/v0.0.4/podbard_v0.0.4_linux_amd64.tar.gz'
      sha256 '6697474b0f1692ce51ab8a481a9c7040d708ea37812315de977b0c3cacfbea42'
    end
  end

  head do
    url 'https://github.com/Songmu/podbard.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'podbard'
  end
end
