cask "healthbar" do
  version "0.2.1"
  sha256 "f1c5b4a5cfc8330ba22f2393672d87b4b6762354af72ea3f51f213f4ffe9445e"

  url "https://github.com/vladforfutdinov/health-bar/releases/download/v#{version}/HealthBar.dmg"
  name "HealthBar"
  desc "Menu bar status of the services you depend on"
  homepage "https://github.com/vladforfutdinov/health-bar"

  depends_on macos: :ventura

  app "HealthBar.app"

  zap trash: [
    "~/Library/Application Support/HealthBar",
    "~/Library/Preferences/com.vladforfutdinov.healthbar.plist",
  ]
end
