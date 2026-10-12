cask "padcanvas" do
  version "1.0,37"
  sha256 "e1b076cd1406d97e4a81ed6e7ed5227eeac3499d1d7d579a13b0cfcb74de34fc"

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
