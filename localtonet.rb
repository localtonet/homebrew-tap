class Localtonet < Formula
  desc "Expose your localhost to the internet securely"
  homepage "https://localtonet.com"
  version "7.6.0"
  license "Proprietary"

  on_macos do
    if Hardware::CPU.arm?
      url "https://localtonet.com/download/localtonet-osx-arm64.zip"
    else
      url "https://localtonet.com/download/localtonet-osx-64.zip"
    end
  end

  def install
    # Gerçek binaryyi izole et
    libexec.install "localtonet"

    # Wrapper script ile DOTNET_BUNDLE_EXTRACT_BASE_DIR ayarla
    (bin/"localtonet").write <<~EOS
      #!/bin/bash
      export DOTNET_BUNDLE_EXTRACT_BASE_DIR="${HOME}/.localtonet/.net"
      mkdir -p "$DOTNET_BUNDLE_EXTRACT_BASE_DIR"
      exec "#{libexec}/localtonet" "$@"
    EOS

    chmod 0755, bin/"localtonet"
  end

  test do
    system "#{bin}/localtonet", "--version"
  end
end
