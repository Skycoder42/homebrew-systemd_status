cask "systemd-status-client" do
  version "0.4.3"
  sha256 "b3f177831f21a0f606fabf1a0f59c9816d122f89c7ddf3b0bba1a59b66108a2c"

  url "https://github.com/Skycoder42/systemd_status/releases/download/client%2Fv#{version}/Systemd.Status.dmg"
  name "Systemd Status"
  desc "Monitor the server status of a systemd based server."
  homepage "https://github.com/Skycoder42/systemd_status"

  depends_on macos: :catalina

  app "Systemd Status.app"

  zap trash: [
    "~/Library/Containers/de.skycoder42.systemdStatusClient"
  ]
end
