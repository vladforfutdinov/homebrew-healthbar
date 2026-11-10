cask "healthbar" do
  version "0.3.0"
  sha256 "30772ab488d878acfe40c0655504fb7790fd7da432fb5685472d9874570d3d15"

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
