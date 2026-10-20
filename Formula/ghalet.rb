class Ghalet < Formula
  version '0.0.1'
  homepage 'https://github.com/Songmu/ghalet'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.0.1/ghalet_v0.0.1_darwin_arm64.zip'
      sha256 '08cad9a022339d4e200ee5e3e4f761271dc5167762c31f57602ea7bf77165dae'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.0.1/ghalet_v0.0.1_darwin_amd64.zip'
      sha256 'e3d2bfa53e48c8cb7398328543b60035637871dd900721012f04edbe97ce95da'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.0.1/ghalet_v0.0.1_linux_arm64.tar.gz'
      sha256 '7eb381950d1690c88cbf75f36a161a1c220409bc1d4f521994270e155c9c3bd6'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.0.1/ghalet_v0.0.1_linux_amd64.tar.gz'
      sha256 'd69f588e055da0f33664f87ffad38a906932ab8aefbe122b206bab389e3839ba'
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
