cask "healthbar" do
  version "0.1.0"
  sha256 "290802faefe61574105e5aa818af5c12cbab55904c5542376970f1f98b8b54ae"

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
