cask "elio" do
  arch arm: "arm64", intel: "x64"

  version "0.1.9"
  sha256 arm:   "c18d770dc1d2c0bc2bd69f6d07ce7f71a5233c2ac9bcafb2f9b029dec46cbf95",
         intel: "01bb8bf6cb05dd4f0cc863f29b623bb51ff8ee41da44ee29edb0b96ec63c0615"

  url "https://github.com/localtonet/elio/releases/download/v#{version}/elio-osx-#{arch}.zip"
  name "Elio"
  desc "Terminal and SSH client"
  homepage "https://elio.sh"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Elio.app"
end
