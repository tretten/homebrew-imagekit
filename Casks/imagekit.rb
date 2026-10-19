cask "imagekit" do
  version "0.4.3"
  sha256 "753eb048bf0ee7c1abd6ace35ff9ecfa3a9e29b6b5dfba3d1d37b1e654062899"

  url "https://github.com/tretten/imagekit/releases/download/v#{version}/ImageKit.dmg"
  name "ImageKit"
  desc "Makes images smaller without changing how they look"
  homepage "https://github.com/tretten/imagekit"

  auto_updates true
  depends_on macos: :sonoma

  app "ImageKit.app"
  binary "#{appdir}/ImageKit.app/Contents/Helpers/imagekit"

  zap trash: "~/Library/Preferences/com.imagekit.app.plist"
end
