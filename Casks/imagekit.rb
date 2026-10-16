cask "imagekit" do
  version "0.4.2"
  sha256 "3c08a143dc505c457920a2fa8df0fb36344453dd74ae940969578d0cd9d7e33c"

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
