cask "sundown" do
  version "1.0.1"
  sha256 "4c76de10d017d1a1665505746fe96ba65cb749b605e9ff7d79e88b60916801d2"

  url "https://github.com/seilk/sundown/releases/download/#{version}/Sundown-#{version}.zip",
      verified: "github.com/seilk/sundown/"
  name "Sundown"
  desc "Lightweight macOS menubar app for daily worktime boundary"
  homepage "https://github.com/seilk/sundown"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Sundown.app"

  zap trash: [
    "~/Library/Application Support/Sundown",
    "~/Library/Preferences/com.seilk.sundown.plist"
  ]
end
