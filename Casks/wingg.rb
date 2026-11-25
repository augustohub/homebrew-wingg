cask "wingg" do
  version "0.4.0"
  sha256 "e70d26b6e77bf287cb8d1e3c57f4cd7e5f2afaa968ed9c65abc85ab6c3cad013"

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
