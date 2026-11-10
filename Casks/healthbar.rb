cask "healthbar" do
  version "0.3.1"
  sha256 "5a5b8becffd32e38206c533e98b04d093df41f8b00e44b065423cf1f8ab3cd7f"

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
