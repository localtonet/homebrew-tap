cask "elio" do
  arch arm: "arm64", intel: "x64"

  version "0.1.7"
  sha256 arm:   "c1eb09afa2d2a504f715055aa35088372b400440c0a2cc972cd2f9617405d12c",
         intel: "2c76fda0bb9690ed710a817aad9cafb1730d739504932853221868786ccf4a25"

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
