class Ghalet < Formula
  version '0.3.0'
  homepage 'https://github.com/Songmu/ghalet'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.3.0/ghalet_v0.3.0_darwin_arm64.zip'
      sha256 'fbd0480a0e8d6c0ddb270fb4bfcf0236b836455c999c2bcf8d21256e0ebe6c69'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.3.0/ghalet_v0.3.0_darwin_amd64.zip'
      sha256 'e15dcbbf56079b0aa829b4cfd22abc0c59bd86e8b7a2059460913827a0e098bb'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.3.0/ghalet_v0.3.0_linux_arm64.tar.gz'
      sha256 '4e5eea7497371cfc98b5fc108e54a601255b6dce19b87bff64fac72f398c02d9'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.3.0/ghalet_v0.3.0_linux_amd64.tar.gz'
      sha256 '17a1a58e8d49b702bc0bcb2c9a2ed439110b09ad117427d8b8fb9e3884912a1a'
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
