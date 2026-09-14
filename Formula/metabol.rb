class Metabol < Formula
<<<<<<< HEAD
  version '0.0.3'
||||||| parent of 7ff10e1 (udpate)
  version '0.0.1'
=======
  version '0.0.3'
>>>>>>> 7ff10e1 (udpate)
  homepage 'https://github.com/Songmu/metabol'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
<<<<<<< HEAD
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.3/metabol_v0.0.3_darwin_arm64.zip'
      sha256 '7a89139a19512bea1d4e74cf78d717caf018bc4d3fd6d87d6d88fae1e1e5efdb'
||||||| parent of 7ff10e1 (udpate)
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.1/metabol_v0.0.1_darwin_arm64.zip'
      sha256 '1c682deb9d477a31f46824e65d41217c4e099db0ff98997c83c61c795260f670'
=======
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.3/metabol_v0.0.3_darwin_arm64.zip'
      sha256 '7a89139a19512bea1d4e74cf78d717caf018bc4d3fd6d87d6d88fae1e1e5efdb'
>>>>>>> 7ff10e1 (udpate)
    end
    if Hardware::CPU.intel?
<<<<<<< HEAD
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.3/metabol_v0.0.3_darwin_amd64.zip'
      sha256 '6913262619189cb26162aa779a307b97bc50d837ea590f8927474b2b4bc04319'
||||||| parent of 7ff10e1 (udpate)
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.1/metabol_v0.0.1_darwin_amd64.zip'
      sha256 'f1dc0ec25b96a03718250e68e06e3aeea092ce210e5f08a86047201725a28258'
=======
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.3/metabol_v0.0.3_darwin_amd64.zip'
      sha256 '6913262619189cb26162aa779a307b97bc50d837ea590f8927474b2b4bc04319'
>>>>>>> 7ff10e1 (udpate)
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
<<<<<<< HEAD
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.3/metabol_v0.0.3_linux_arm64.tar.gz'
      sha256 'f239b04f556e78ff94f2db866fae25c814de7d7d5edc29561682805f8ed58da0'
||||||| parent of 7ff10e1 (udpate)
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.1/metabol_v0.0.1_linux_arm64.tar.gz'
      sha256 'b34fe57be2a23b3a020fc31036989c0aaa0c509e03b1bb1a0fd985320e0f76cb'
=======
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.3/metabol_v0.0.3_linux_arm64.tar.gz'
      sha256 'f239b04f556e78ff94f2db866fae25c814de7d7d5edc29561682805f8ed58da0'
>>>>>>> 7ff10e1 (udpate)
    end
    if Hardware::CPU.intel?
<<<<<<< HEAD
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.3/metabol_v0.0.3_linux_amd64.tar.gz'
      sha256 '3ae300ead6d015cbae57ca3179483a71895ed3cd0d99f17f1cb8f0997068978d'
||||||| parent of 7ff10e1 (udpate)
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.1/metabol_v0.0.1_linux_amd64.tar.gz'
      sha256 'ee83d122fda491b0428b3b21f27aeabea62d8e3b6a11caf567820ef6bc2c094a'
=======
      url 'https://github.com/Songmu/metabol/releases/download/v0.0.3/metabol_v0.0.3_linux_amd64.tar.gz'
      sha256 '3ae300ead6d015cbae57ca3179483a71895ed3cd0d99f17f1cb8f0997068978d'
>>>>>>> 7ff10e1 (udpate)
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
