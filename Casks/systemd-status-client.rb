cask "systemd-status-client" do
  version "0.4.7"
  sha256 "db8ee31ec8930ae6b4e3ebfcbd252c5dcdbd8ee8f72ac39c709fd0ce2cd4b407"

  url "https://github.com/Skycoder42/systemd_status/releases/download/client%2Fv#{version}/Systemd.Status.dmg"
  name "Systemd Status"
  desc "Monitor the server status of a systemd based server."
  homepage "https://github.com/Skycoder42/systemd_status"

  depends_on macos: :monterey

  app "Systemd Status.app"

  zap trash: [
    "~/Library/Containers/de.skycoder42.systemdStatusClient"
  ]
end
