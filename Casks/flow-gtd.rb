cask "flow-gtd" do
  version "0.7.7"
  sha256 "dd7fcfc5f45ad77ed97b6e62f96d90a3927100a3fff0dbdb409416b92f2c542b"

  url "https://github.com/jasonhotsauce/flow-gtd/releases/download/v#{version}/Flow-#{version}-macos-arm64.zip"
  name "Flow GTD"
  desc "Local-first, AI-augmented GTD native macOS app"
  homepage "https://github.com/jasonhotsauce/flow-gtd"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Flow.app"

  uninstall quit: "com.flowgtd.native"
end
