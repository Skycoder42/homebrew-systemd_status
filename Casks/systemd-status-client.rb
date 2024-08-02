cask "systemd-status-client" do
  version "0.2.9"
  sha256 "9ab5fcb150e64446ccf5b9a284ae59eae5f41ad4fff75861745b5eec8c8f61bf"

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
