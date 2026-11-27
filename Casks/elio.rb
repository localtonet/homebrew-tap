cask "elio" do
  arch arm: "arm64", intel: "x64"

  version "0.2.0"
  sha256 arm:   "f7405fa012bf4e171fb47b14475474839681cf7d7df78051a41f0e4a0f6c6d11",
         intel: "5bf3a03d2eb6338e438b7aeff02d89576138c1766a79b7e6cc07c715ab78c44b"

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
