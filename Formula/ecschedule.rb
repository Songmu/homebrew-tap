class Ecschedule < Formula
  version '0.11.3'
  homepage 'https://github.com/Songmu/ecschedule'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.11.3/ecschedule_v0.11.3_darwin_arm64.zip'
      sha256 '3adb915b628a22ba60fc46515b2092bf0d6dde271d0fb782098552925fbf2e42'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.11.3/ecschedule_v0.11.3_darwin_amd64.zip'
      sha256 '33b6e7a1208118f612a1df53696d82653070d1b5a503583116842ca57dc4e3a1'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.11.3/ecschedule_v0.11.3_linux_arm64.tar.gz'
      sha256 '0de20a03aff546ee2557106ee9430584cbb375f43ca6a3cecd0439978cfe8884'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ecschedule/releases/download/v0.11.3/ecschedule_v0.11.3_linux_amd64.tar.gz'
      sha256 '4c66503cad779593f7f47fc76215a2a6ee62723dced592e3bdbc1a2fed4e79d2'
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
