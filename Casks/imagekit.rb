cask "imagekit" do
  version "0.4.0"
  sha256 "93fcb14b6525e8a1d755e7a9c5a367c2939e911db097077e28c9729560aa4b49"

  url "https://github.com/tretten/imagekit/releases/download/v#{version}/ImageKit.dmg"
  name "ImageKit"
  desc "Makes images smaller without changing how they look"
  homepage "https://github.com/tretten/imagekit"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "ImageKit.app"
  binary "#{appdir}/ImageKit.app/Contents/Helpers/imagekit"

  zap trash: [
    "~/Library/Preferences/com.imagekit.app.plist",
    "~/Library/Application Support/ImageKit",
  ]
end
