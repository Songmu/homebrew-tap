class Fmd2json < Formula
  version '0.0.2'
  homepage 'https://github.com/Songmu/fmd2json'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.2/fmd2json_v0.0.2_darwin_arm64.zip'
      sha256 'cdd84cffb9a59c60fa14489d5c419d9ac59e0b39e067786d29766ddf8c2bc1ec'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.2/fmd2json_v0.0.2_darwin_amd64.zip'
      sha256 '26fd62425d5c001a9f81ce60b32e9bb73255d29d34372cd1bb5d5db1419d65ce'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.2/fmd2json_v0.0.2_linux_arm64.tar.gz'
      sha256 'd6ff8cd49d73b08c8159083ce13511d6648197eb97340ddc37da299f76927bb0'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.2/fmd2json_v0.0.2_linux_amd64.tar.gz'
      sha256 'eae2463d3e2101bc71f1c213ae6ed8b1f53e52859bc8e74d363f96fd57794357'
    end
  end

  head do
    url 'https://github.com/Songmu/fmd2json.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'fmd2json'
  end
end
