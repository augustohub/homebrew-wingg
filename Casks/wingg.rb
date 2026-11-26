cask "wingg" do
  version "0.6.0"
  sha256 "2e6a0d15a0c024fc7abf8ca4c8576430570106856d657321da8319cbd7ce8742"

  url "https://github.com/augustohub/wingg-releases/releases/download/v#{version}/Wingg-#{version}.zip"
  name "Wingg"
  desc "Widget wings beside the Dock"
  homepage "https://github.com/augustohub/wingg-releases"

  livecheck do
    url "https://github.com/augustohub/wingg-releases/releases/latest/download/appcast.xml"
    strategy :sparkle, &:short_version
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
