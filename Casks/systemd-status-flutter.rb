cask "systemd-status-flutter" do
  version "0.1.7"
  sha256 "ae133a9604dda016ce3bbdecc19a036a3037d1df49f745db643d9b37361c4247"

  url "https://github.com/Skycoder42/systemd_status/releases/download/app%2Fv#{version}/Systemd.Status.dmg"
  name "Systemd Status"
  desc "Monitor the server status of a systemd based server."
  homepage "https://github.com/Skycoder42/systemd_status"

  depends_on macos: ">= :catalina"

  app "Systemd Status.app"

  zap trash: [
    "~/Library/Containers/de.skycoder42.systemdStatusFlutter"
  ]
end
