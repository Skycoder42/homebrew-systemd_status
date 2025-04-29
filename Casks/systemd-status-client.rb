cask "systemd-status-client" do
  version "0.3.3"
  sha256 "25e4f5eca4bda2f79df41a15b09ca1b3822df41824caa88ea71f7734000fb264"

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
