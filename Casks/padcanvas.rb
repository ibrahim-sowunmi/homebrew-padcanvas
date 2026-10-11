cask "padcanvas" do
  version "1.0,33"
  sha256 "270f4206c8712f7bdefac35c81249b446d581d817afa5e8f5d03be99444203df"

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
