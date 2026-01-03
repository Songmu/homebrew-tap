class Maltmill < Formula
  version '1.2.1'
  homepage 'https://github.com/Songmu/maltmill'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.2.1/maltmill_v1.2.1_darwin_arm64.zip'
      sha256 '210e0703c6d7339726f10c3201e12fc18d531e2603254f8fd204f36047cc9943'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.2.1/maltmill_v1.2.1_darwin_amd64.zip'
      sha256 '66a1f4eea16aab834d8ac75707504dc6a41c1a603fb0c391c1ea33dac96ef72f'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.2.1/maltmill_v1.2.1_linux_arm64.tar.gz'
      sha256 '62abecf30eeb4a972556fd0b93c253d6a868e745ae853420b0d2d83854f6e096'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/maltmill/releases/download/v1.2.1/maltmill_v1.2.1_linux_amd64.tar.gz'
      sha256 '64a3ddd04942997f6a065da8965b34f7a15672a2db5581233e4f2e9a4208b952'
    end
  end

  head do
    url 'https://github.com/Songmu/maltmill.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'maltmill'
  end
end
