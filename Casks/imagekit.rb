cask "imagekit" do
  version "0.4.1"
  sha256 "4a39b2af032b0f5329b101fe078b1d3ea26f4c7812b12eb091a04d9d71123b4e"

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
