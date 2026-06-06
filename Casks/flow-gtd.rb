cask "flow-gtd" do
  version "0.7.6"
  sha256 "13a2ac3f12a5093fabf7b2e186b898d90f747f8445dbde1a8a85fbfcde5f4253"

  url "https://github.com/jasonhotsauce/flow-gtd/releases/download/v#{version}/Flow-#{version}-macos-arm64.zip"
  name "Flow GTD"
  desc "Local-first, AI-augmented GTD native macOS app"
  homepage "https://github.com/jasonhotsauce/flow-gtd"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Flow.app"

  uninstall quit: "com.flowgtd.native"
end
