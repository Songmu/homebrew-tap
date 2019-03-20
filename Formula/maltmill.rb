class Maltmill < Formula
  version '0.4.0'
  homepage 'https://github.com/Songmu/maltmill'
  url "https://github.com/Songmu/maltmill/releases/download/v0.4.0/maltmill_v0.4.0_darwin_amd64.zip"
  sha256 '02eba581e4045c07509902434b87760cf8359b8bbb78e4c418be522e5d4439be'
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
