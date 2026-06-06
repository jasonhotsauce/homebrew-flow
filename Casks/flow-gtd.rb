cask "flow-gtd" do
  version "0.7.5"
  sha256 "5c1f11f3fe65e6b029c62ee593435df18b714ce0d0ec5a6e8bbfddf47105c168"

  url "https://github.com/jasonhotsauce/flow-gtd/releases/download/v#{version}/Flow-#{version}-macos-arm64.zip"
  name "Flow GTD"
  desc "Local-first, AI-augmented GTD native macOS app"
  homepage "https://github.com/jasonhotsauce/flow-gtd"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Flow.app"

  uninstall quit: "com.flowgtd.native"
end
