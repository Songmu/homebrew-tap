class Sagepipe < Formula
  version '0.0.4'
  homepage 'https://github.com/Songmu/sagepipe'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/sagepipe/releases/download/v0.0.4/sagepipe_v0.0.4_darwin_arm64.zip'
      sha256 'aff7a41505ca2572cb44826fc58beaefff8b25d1be510f273642bc01d60c782b'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/sagepipe/releases/download/v0.0.4/sagepipe_v0.0.4_darwin_amd64.zip'
      sha256 '3ba1a8312c009f60f94844ab1bf009827d8e8ee92805b0bcd497b173117d1ac1'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/sagepipe/releases/download/v0.0.4/sagepipe_v0.0.4_linux_arm64.tar.gz'
      sha256 'aa3b01ddc20b590f60d3da65b2e2fed0106b10e3324a028d40b734a5d6a689cb'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/sagepipe/releases/download/v0.0.4/sagepipe_v0.0.4_linux_amd64.tar.gz'
      sha256 '35707c74e762fc1dcf9bcb5ba3c88512443f96b37d57fcdc8482879757a4176c'
    end
  end

  head do
    url 'https://github.com/Songmu/sagepipe.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'sagepipe'
  end

  test do
    system "#{bin}/sagepipe", '-h'
  end
end
