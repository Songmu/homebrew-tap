class Laminate < Formula
  desc 'A command-line bridge tool that orchestrates external image generation commands to convert text/code strings to images.'
  version '0.0.3'
  homepage 'https://github.com/Songmu/laminate'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/laminate/releases/download/v0.0.3/laminate_v0.0.3_darwin_arm64.zip'
      sha256 'c1051eba0998f18d25c418420e485d52dfd7499117e227f14a7fec87062becf7'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/laminate/releases/download/v0.0.3/laminate_v0.0.3_darwin_amd64.zip'
      sha256 '3ca04d51d8141422102b8113c64be68e8acad5a1675fdd39eafb25dccfb923a2'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/laminate/releases/download/v0.0.3/laminate_v0.0.3_linux_arm64.tar.gz'
      sha256 '1f38d4bc8c956900bdd79c7d007634ea49120868bfa1a303818a1f3316dc25e3'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/laminate/releases/download/v0.0.3/laminate_v0.0.3_linux_amd64.tar.gz'
      sha256 '1855c6b057e8a9d1e7edf975fc09bf56a14bc763c66ff6617ac4db67b234c0bf'
    end
  end

  head do
    url 'https://github.com/Songmu/laminate.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'laminate'
  end
end
