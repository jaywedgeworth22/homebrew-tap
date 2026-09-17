cask "agent-bar" do
  version "1.0.0"
  sha256 "ab600a1dd762ab104f66b565d916145f37caa47216a391e498f8df71f5c23a3b"

  url "https://github.com/jaywedgeworth22/agent-bar/releases/download/v#{version}/AgentBar.dmg",
      verified: "github.com/jaywedgeworth22/agent-bar/"
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
