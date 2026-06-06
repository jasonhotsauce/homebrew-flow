cask "flow-gtd" do
  version "0.7.4"
  sha256 "9c50095b7f8b1d7cf318fa433bb353b5afcddbb087b3294497ecc9e3c3fa9291"

  url "https://github.com/jasonhotsauce/flow-gtd/releases/download/v#{version}/Flow-#{version}-macos-arm64.zip"
  name "Flow GTD"
  desc "Local-first, AI-augmented GTD native macOS app"
  homepage "https://github.com/jasonhotsauce/flow-gtd"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Flow.app"

  uninstall quit: "com.flowgtd.native"
end
