cask "wingg" do
  version "0.5.0"
  sha256 "9efd5b52d838a49632cffff8dfafff40b7d7c1c0ca29dc7d8792649e4d678237"

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
