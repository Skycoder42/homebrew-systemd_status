cask "systemd-status-flutter" do
  version "0.1.6"
  sha256 "c5ed4fc00aa1fe493f6ce063d5f07ce4956b72358d199ba92debe0fb5ba2bb6a"

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
