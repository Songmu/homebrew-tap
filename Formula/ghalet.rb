class Ghalet < Formula
  version '0.2.4'
  homepage 'https://github.com/Songmu/ghalet'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.2.4/ghalet_v0.2.4_darwin_arm64.zip'
      sha256 '27a8d4f036d9082bede20a1072bb365f70d3f30fdaf861fee19747806a4ab7e6'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.2.4/ghalet_v0.2.4_darwin_amd64.zip'
      sha256 'd0dbbbd6a17c1962adc0e4df159caa921dcc86e55c9960dbac06faa0377e8f4f'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.2.4/ghalet_v0.2.4_linux_arm64.tar.gz'
      sha256 '0bb5be29196472b3538bb0a2b052bb4645bef6e161b1370778f4c27415c63f8f'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.2.4/ghalet_v0.2.4_linux_amd64.tar.gz'
      sha256 'c5a8c0b77fc2d684c829f8e3648fd55de492cf68dd80d13f657cb5960b223d18'
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
