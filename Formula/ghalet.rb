class Ghalet < Formula
  version '0.1.1'
  homepage 'https://github.com/Songmu/ghalet'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.1.1/ghalet_v0.1.1_darwin_arm64.zip'
      sha256 'aceefb20d97b7c76e6e1a88358f203b2fae7b1af9523f7e8fbe37d48598ee7da'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.1.1/ghalet_v0.1.1_darwin_amd64.zip'
      sha256 'c242cdc6cd64aa7e021a7fc0bd1332b63658d828127ae207e8cab33c8d4476c5'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.1.1/ghalet_v0.1.1_linux_arm64.tar.gz'
      sha256 'cede1f0368d69b0b6113769422e0e492d6bd00d02fb88579b0df5273db1e8c6e'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.1.1/ghalet_v0.1.1_linux_amd64.tar.gz'
      sha256 'f89de505b3ea4af7833f662c91129b6a752b8c963757f7ba0f379f1cac60a2de'
    end
  end

  head do
    url 'https://github.com/Songmu/ghalet.git'
    depends_on 'go' => :build
  end

  def install
    if build.head?
      system 'make', 'build'
    end
    bin.install 'ghalet'
  end

  test do
    system "#{bin}/ghalet", '-h'
  end

  service do
    run macos: [opt_bin/"ghalet", "run"]
    run_at_load true
    keep_alive successful_exit: false
    environment_variables PATH: std_service_path_env
    stop_timeout 900
    log_path var/"log/ghalet.log"
    error_log_path var/"log/ghalet.error.log"
  end

end
