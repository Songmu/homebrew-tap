cask "octobiz" do
  version "0.1.0"
  sha256 "48a25d23bedb2ddca6118fc36277edf7fd0bb2a67b2a2419e4cdfebacb8db485"

  url "https://github.com/Songmu/OctoBiz/releases/download/v#{version}/OctoBiz_v#{version}.zip"
  name "OctoBiz"
  desc "Japanese gothic typeface for GitHub-related slides and documents"
  homepage "https://github.com/Songmu/OctoBiz"

  livecheck do
    url :url
    strategy :github_latest
  end

  font "OctoBiz_v#{version}/OctoBiz-Regular.ttf"
  font "OctoBiz_v#{version}/OctoBiz-Bold.ttf"

  # No zap stanza: fonts are removed by the `font` artifact on uninstall.
end
