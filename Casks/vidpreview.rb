cask "vidpreview" do
  version "5.1B"
  sha256 "5ec97c4c3f0d8d5032a64e91ec67ad03b82f85a089e3ae82a78d88c305b3a103"

  url "https://github.com/ptaru/VidPreview/releases/download/#{version}/VidPreview.zip"
  name "VidPreview"
  desc "QuickLook extension for native video preview"
  homepage "https://github.com/ptaru/VidPreview"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sequoia"

  app "VidPreview.app"
end
