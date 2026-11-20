cask "elio" do
  arch arm: "arm64", intel: "x64"

  version "0.1.8"
  sha256 arm:   "1ff1eb9a36875657b1721008120e7c5071d2fb8ff0529970362a78135dd777d0",
         intel: "0eb63283557056599f67f5a3f4b34fe089c29808c7cb00b5ba9f1229e45fefd2"

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
