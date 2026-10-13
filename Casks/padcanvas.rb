cask "padcanvas" do
  version "1.0,38"
  sha256 "84b57d8132c785e60fff7d77828a0956e3536bb0b294e15bb776f741d411ded4"

  url "https://padcanvas.app/downloads/PadCanvas-#{version.csv.first}-#{version.csv.second}.zip"
  name "PadCanvas"
  desc "Annotate your screen from a phone, tablet or browser"
  homepage "https://padcanvas.app/"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "PadCanvas.app"

  uninstall quit: "local.ibrahim.PadCanvas"

  # Preserve saved drawings, projects, preferences and account access on uninstall.
end
