cask "wingg" do
  version "0.3.0"
  sha256 "16ee2d662d02a9d19ac9145e0c08dcb69dbc236e01d6dd007bb27e3fed7bbf41"

  url "https://github.com/augustohub/wingg-releases/releases/download/v#{version}/Wingg-#{version}.zip"
  name "Wingg"
  desc "Widget wings beside the Dock"
  homepage "https://github.com/augustohub/wingg-releases"

  livecheck do
    url "https://github.com/augustohub/wingg-releases/releases/latest/download/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Wingg.app"

  zap trash: [
    "~/Library/Application Support/Wingg",
    "~/Library/Logs/Wingg",
    "~/Library/Preferences/com.augustohubert.wingg.plist",
  ]
end
