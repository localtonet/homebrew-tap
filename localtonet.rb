class Localtonet < Formula
  desc "Expose your localhost to the internet securely"
  homepage "https://localtonet.com"
  version "7.3.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://localtonet.com/download/localtonet-osx-arm64.zip"
    else
      url "https://localtonet.com/download/localtonet-osx-64.zip"
    end
  end

  def install
    bin.install "localtonet"
  end

  test do
    system "#{bin}/localtonet", "--version"
  end
end
