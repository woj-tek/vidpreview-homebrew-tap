cask "privateclient" do
  version "1.0b4"
  sha256 "864dbf65ea535f2ee3100964319b7fc8b864785ee07510984c1a67dc9a940015"

  url "https://github.com/ptaru/PrivateClient/releases/download/#{version}/PrivateClient-Release.zip"
  name "PrivateClient"
  desc "Unofficial client for Private Internet Access"
  homepage "https://github.com/ptaru/PrivateClient"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "PrivateClient.app"
end
