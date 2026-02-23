cask "sundown" do
  version "1.0.5"
  sha256 "6a09598bad4b852107d826559d6d29bc02f5f1d23e03eaefdd9579931f1d5d2e"

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
