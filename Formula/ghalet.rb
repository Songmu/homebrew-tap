class Ghalet < Formula
  version '0.2.2'
  homepage 'https://github.com/Songmu/ghalet'
  license 'MIT'

  on_macos do
    if Hardware::CPU.arm?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.2.2/ghalet_v0.2.2_darwin_arm64.zip'
      sha256 '864eac0569d904457501d819d926f8b51e432dd4e51a6664edd951bdc2306f20'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.2.2/ghalet_v0.2.2_darwin_amd64.zip'
      sha256 '5a329d6d8df0737405768a598726ed43499d3a9124c7de97810770288e4804ce'
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.2.2/ghalet_v0.2.2_linux_arm64.tar.gz'
      sha256 '7dff98c2c8fe35d280b357bab23f8c469785f2788169645aa7cae910ef4b53d2'
    end
    if Hardware::CPU.intel?
      url 'https://github.com/Songmu/ghalet/releases/download/v0.2.2/ghalet_v0.2.2_linux_amd64.tar.gz'
      sha256 '7fdbcf7198c6179b6f6aacd768823b47cfbdb6c0116e63db57f8ef2db8507924'
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
