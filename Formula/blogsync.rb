class Blogsync < Formula
  version '0.10.2'
  homepage 'https://github.com/motemen/blogsync'
  url "https://github.com/motemen/blogsync/releases/download/v0.10.2/blogsync_v0.10.2_darwin_amd64.zip"
  sha256 'f66ac4ab5da17614cd5f505763ff17be0056818fd255153ec2ab1c38d3a7fb45'
  head 'https://github.com/motemen/blogsync.git'

  def install
    bin.install 'blogsync'
  end
end
