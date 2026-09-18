cask "codecaps" do
  version "1.1.0"
  sha256 "ef40d2f74f6887ee2d79d54160849686c1d60c5b7046ba5ae45c2be89c51f4d1"

  url "https://github.com/jaywedgeworth22/codecaps/releases/download/v#{version}/CodeCaps.dmg"
  name "CodeCaps"
  desc "Menu bar monitor for AI coding quotas"
  homepage "https://jaywedgeworth22.github.io/codecaps/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "CodeCaps.app"

  uninstall quit: "com.jays.agent-bar.mac"

  # Only this app's own preferences.  The quota handoff file under Application
  # Support is shared with other local consumers, so it is deliberately left
  # alone here.  The bundle id is unchanged from the AgentBar name, so an
  # upgrade keeps the existing preferences and Keychain items.
  zap trash: "~/Library/Preferences/com.jays.agent-bar.mac.plist"
end
