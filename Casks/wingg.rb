cask "wingg" do
  version "0.7.0"
  sha256 "01705c5b02548eb7259ba54b2b0f7a025c6f5dfea05c5e08bd3ee9d66ffa4ef9"

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
