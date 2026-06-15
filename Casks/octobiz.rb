cask "octobiz" do
  version "0.0.1"
  sha256 "8987870d23a958782ec9a096114f03ae5b35a80da82ef106281250fe36bd9294"

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
