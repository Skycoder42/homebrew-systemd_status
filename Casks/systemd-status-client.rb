cask "systemd-status-client" do
  version "0.3.1"
  sha256 "f2e52c2c365401693bee8680df1647ef7abe3ba40ae017bfcd8b109ae11c0e80"

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
