cask "sundown" do
  version "1.0.1"
  sha256 "74624c20978477f30c6765734c03fde0a7008d7fa64144fbf32b51a53b914267"

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
