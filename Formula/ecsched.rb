class Ecsched < Formula
  version '0.1.0'
  homepage 'https://github.com/Songmu/ecsched'
  if OS.mac?
    url "https://github.com/Songmu/ecsched/releases/download/v0.1.0/ecsched_v0.1.0_darwin_amd64.zip"
    sha256 'b22bab0e67632b0e7a04b1a37607d6b577e6d8c7660c6a1a3f1bb60fb7f29fe4'
  end
  if OS.linux?
    url "https://github.com/Songmu/ecsched/releases/download/v0.1.0/ecsched_v0.1.0_linux_amd64.tar.gz"
    sha256 '8cf7c5b7613cf7f1a6ed502a0308656508684feb3ecfba5763c8b4d54d9b6513'
  end
  head 'https://github.com/Songmu/ecsched.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'ecsched'
  end
end
