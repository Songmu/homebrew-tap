class Ecschedule < Formula
  version '0.15.2'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.15.2/ecschedule_v0.15.2_darwin_arm64.zip'
      sha256 '745be850e0461cb870a32a97499c15e37cba60448da594e5400de4af350b9a6d'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.15.2/ecschedule_v0.15.2_darwin_amd64.zip'
      sha256 '5f0f78e1da6d67e5df5c1a057f46193cf9781e5221d4fa288a6b4e412521add3'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.15.2/ecschedule_v0.15.2_linux_arm64.tar.gz'
      sha256 'b338f8c4f6d762267467826fb047b5ba26a9727d57293f0e55492bc8c4fc9445'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.15.2/ecschedule_v0.15.2_linux_amd64.tar.gz'
      sha256 '81b0d87be9a7b440c273ffe7404a12ef84425e1c26ec7a905d6754b964e4e11a'
    end
  end

  head do
    url 'https://github.com/Songmu/ecschedule.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'ecschedule'
  end
end
