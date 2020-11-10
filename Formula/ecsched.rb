class Ecsched < Formula
  version '0.1.2'
  homepage 'https://github.com/Songmu/ecsched'
  if OS.mac?
    url "https://github.com/Songmu/ecsched/releases/download/v0.1.2/ecsched_v0.1.2_darwin_amd64.zip"
    sha256 '142f56a90e2bf40936ce99aa36667725b73755aed3970b620c1c6f16e51574ef'
  end
  if OS.linux?
    url "https://github.com/Songmu/ecsched/releases/download/v0.1.2/ecsched_v0.1.2_linux_amd64.tar.gz"
    sha256 'c0e2e3142e8538ada31d5855384003b1c8c4d83e6d1d8c421e3556ef4c3b9f0f'
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
