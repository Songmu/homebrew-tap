class Fmd2json < Formula
  version '0.0.4'
  homepage 'https://github.com/Songmu/fmd2json'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.4/fmd2json_v0.0.4_darwin_arm64.zip'
      sha256 '9ed652b2792f936958e3cf8c9d68da78ee356e235cee03b37ff4b82dee539fb6'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.4/fmd2json_v0.0.4_darwin_amd64.zip'
      sha256 '2b6b405324af3f3a4c0d18839acf8de837e54085b7579b38cd9c3745670e718a'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.4/fmd2json_v0.0.4_linux_arm64.tar.gz'
      sha256 '10dfb51ea88b834b45d24a62c31ee95a22ebc10a835912be7d96501dda037492'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/fmd2json/releases/download/v0.0.4/fmd2json_v0.0.4_linux_amd64.tar.gz'
      sha256 '8d3a73aafb33cacfb4ea1a2f9519a9286667af3f143452aa65f04141567927fd'
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
