cask "agent-bar" do
  version "1.0.2"
  sha256 "27c4b38a1b0ed1c1e4aaca030b55f1147612a2cbffe989b7089410956c270446"

  url "https://github.com/jaywedgeworth22/agent-bar/releases/download/v#{version}/AgentBar.dmg"
  name "AgentBar"
  desc "Menu bar monitor for AI coding agent quotas"
  homepage "https://jaywedgeworth22.github.io/agent-bar/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "AgentBar.app"

  uninstall quit: "com.jays.agent-bar.mac"

  # Only this app's own preferences.  The quota handoff file under Application
  # Support is shared with other local consumers, so it is deliberately left
  # alone here.
  zap trash: "~/Library/Preferences/com.jays.agent-bar.mac.plist"
end
