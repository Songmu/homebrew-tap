class Metabol < Formula
  version '0.0.3'
  homepage 'https://github.com/Songmu/metabol'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.3/metabol_v0.0.3_darwin_arm64.zip'
      sha256 '7a89139a19512bea1d4e74cf78d717caf018bc4d3fd6d87d6d88fae1e1e5efdb'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.3/metabol_v0.0.3_darwin_amd64.zip'
      sha256 '6913262619189cb26162aa779a307b97bc50d837ea590f8927474b2b4bc04319'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.3/metabol_v0.0.3_linux_arm64.tar.gz'
      sha256 'f239b04f556e78ff94f2db866fae25c814de7d7d5edc29561682805f8ed58da0'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.3/metabol_v0.0.3_linux_amd64.tar.gz'
      sha256 '3ae300ead6d015cbae57ca3179483a71895ed3cd0d99f17f1cb8f0997068978d'
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
