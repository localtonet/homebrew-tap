cask "elio" do
  arch arm: "arm64", intel: "x64"

  version "0.1.6"
  sha256 arm:   "77247e98059d14071a51352ebfbdea8c80daf686037e36362711ee8680fd5f47",
         intel: "32f8e7ccfff07ccdeada9b257c9643293897bc7164abbed8b5f013c15213fc49"

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
