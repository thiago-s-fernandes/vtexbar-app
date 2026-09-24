cask "vtexbar" do
  version "1.0.0"
  sha256 "a04e4e92c8c049b1af525619ef92e881fb0a3dd9365940a87c4d164bb0104ff5"

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
