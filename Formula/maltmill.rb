class Maltmill < Formula
  version '1.0.0'
  homepage 'https://github.com/Songmu/maltmill'
  url "https://github.com/Songmu/maltmill/releases/download/v1.0.0/maltmill_v1.0.0_darwin_amd64.zip"
  sha256 'df4431d124d8912d8916b8e05fe5e27b9752a5e261fe8283f9b37fc3a5ac3767'
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
