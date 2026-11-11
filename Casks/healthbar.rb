cask "healthbar" do
  version "0.3.2"
  sha256 "fdbc680cb38571576e9bc32c5b4467acc89374e39ca93f474eea407cc45f23dc"

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
