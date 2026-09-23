cask "vtexbar" do
  version "1.0.0"
  sha256 "ef1c7179073e9b3ac58a0843fdc3b42b434859948a7a26bdfb7eae5abfd4bbf3"

  url "https://github.com/thiago-s-fernandes/vtexbar-app/releases/download/v#{version}/VTEX-Bar.dmg"
  name "VTEX Bar"
  desc "Native macOS menu bar app for VTEX IO and FastStore developers"
  homepage "https://github.com/thiago-s-fernandes/vtexbar-app"

  app "VTEX Bar.app"

  zap trash: [
    "~/Library/LaunchAgents/com.thiagofernandes.vtexbar.plist",
    "/tmp/vtexbar.err",
    "/tmp/vtexbar.out",
  ]
end
