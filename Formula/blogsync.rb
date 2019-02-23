class Blogsync < Formula
  version '0.10.1'
  homepage 'https://github.com/motemen/blogsync'
  url "https://github.com/motemen/blogsync/releases/download/v0.10.1/blogsync_v0.10.1_darwin_amd64.zip"
  sha256 'b0b9ded7fe9bee307d84eec2fa65c7806e82aa1a520b09d7bfa05a5ef0c3c571'
  head 'https://github.com/motemen/blogsync.git'

  def install
    bin.install 'blogsync'
  end
end
