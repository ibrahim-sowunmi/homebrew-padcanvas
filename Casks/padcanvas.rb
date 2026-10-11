cask "padcanvas" do
  version "1.0,30"
  sha256 "78b4e0d4b6b4b3f5af81de2157f2e47d07f0d2149529756e075754c69cb4eca2"

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
