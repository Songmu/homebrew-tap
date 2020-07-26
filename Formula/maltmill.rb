class Maltmill < Formula
  version '0.5.0'
  homepage 'https://github.com/Songmu/maltmill'
  url "https://github.com/Songmu/maltmill/releases/download/v0.5.0/maltmill_v0.5.0_darwin_amd64.zip"
  sha256 'a12d12c56d704ea0c7faa67e3a24986be175f02d06917993f9cc9b05a8c46dd6'
  head 'https://github.com/Songmu/maltmill.git'

  head do
    depends_on 'go' => :build
    depends_on 'hg' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'maltmill'
  end
end
