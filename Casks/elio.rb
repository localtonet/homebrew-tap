cask "elio" do
  arch arm: "arm64", intel: "x64"

  version "0.1.5"
  sha256 arm:   "4f0f82f11d34da74bf2101561793a3bf8bba09a3e612626dda0d1963017d22dc",
         intel: "f86d13409e121d7756d33db64966bc1068377d7818b443da74dedb1a612a3389"

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
