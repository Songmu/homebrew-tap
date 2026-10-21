class Ghalet < Formula
  version '0.0.5'
  homepage 'https://github.com/Songmu/ghalet'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.0.5/ghalet_v0.0.5_darwin_arm64.zip'
      sha256 'aa4302fc3110b8b549c0458253a57dfeafabaff08589c687fdd6969ebc45d25c'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.0.5/ghalet_v0.0.5_darwin_amd64.zip'
      sha256 '339f4402320ae5c011e9c54d4e4b9895cc9d300135d90335caa6af2b70e3f322'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.0.5/ghalet_v0.0.5_linux_arm64.tar.gz'
      sha256 'a13b84debc6c04aacda9db1ed9fa4783003454515429a36cdf4fc67d3e908784'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.0.5/ghalet_v0.0.5_linux_amd64.tar.gz'
      sha256 '4633d675ad4386086ba8a1a0706ce77ccf757a8ec3369de52cbda7cb1d208df6'
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
