cask "vtexbar" do
  version "1.0.0"
  sha256 "e7c0c0c4ec79abd3c6702b117e1202af3126d33185c4930d03f29493b1df5dd0"

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
