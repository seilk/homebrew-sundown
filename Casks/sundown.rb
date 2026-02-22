cask "sundown" do
  version "1.0.1"
  sha256 "0dbcf871e448b75731438e796253686d4b98baaf18a990b9aebf988b30897969"

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
