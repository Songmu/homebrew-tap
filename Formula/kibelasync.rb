class Kibelasync < Formula
  version '0.0.1'
  homepage 'https://github.com/Songmu/kibelasync'
  url "https://github.com/Songmu/kibelasync/releases/download/v0.0.1/kibelasync_v0.0.1_darwin_amd64.zip"
  sha256 'c26d97c5abe9b421cabdbb04ad3407021d56742f6c4eb19e5a3e918a47463cb0'
  head 'https://github.com/Songmu/kibelasync.git'

  head do
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'kibelasync'
  end
end
