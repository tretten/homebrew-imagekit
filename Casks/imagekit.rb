cask "imagekit" do
  version "0.4.8"
  sha256 "840f07121d55e9b361b5a3f6a20adbae766b00f545769713b92afd0095ee3950"

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
