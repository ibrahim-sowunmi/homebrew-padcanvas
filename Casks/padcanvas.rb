cask "padcanvas" do
  version "1.0,35"
  sha256 "8022f14e0fce36e25d0a0e55c27e3fc1683f282e5120f1aa852e246704eba2cf"

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
