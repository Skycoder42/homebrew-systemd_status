cask "systemd-status-client" do
  version "0.2.4"
  sha256 "e50eef608df39a5d5da6fe8a0ff83749defc530a8a8a7ce7556a75f57b0b58c1"

  url "https://github.com/Skycoder42/systemd_status/releases/download/client%2Fv#{version}/Systemd.Status.dmg"
  name "Systemd Status"
  desc "Monitor the server status of a systemd based server."
  homepage "https://github.com/Skycoder42/systemd_status"

  depends_on macos: ">= :catalina"

  app "Systemd Status.app"

  zap trash: [
    "~/Library/Containers/de.skycoder42.systemdStatusClient"
  ]
end
