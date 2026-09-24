cask "vtexbar" do
  version "1.0.0"
  sha256 "9930537f15d600ec8d946b3fe010124fa74361fd702504886633640d926f052b"

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
