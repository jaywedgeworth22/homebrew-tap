cask "agent-bar" do
  version "1.0.1"
  sha256 "78b7cdef0dfac3bcf8b647c0900c7fe8c7576f38d6e6ae2a9f3d693da00f26d5"

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
