cask "vtexbar" do
  version "1.0.0"
  sha256 "b85961605a100daa7b9f52918ddbb04f79c6645463c0680b5c5fc0668953f451"

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
