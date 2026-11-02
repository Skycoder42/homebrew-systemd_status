cask "systemd-status-client" do
  version "0.4.10"
  sha256 "10f1046ccd8c8ba7888346299a6e3063a82682561ec1e55f93ea3b9ffda56040"

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
