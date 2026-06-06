cask "flow-gtd" do
  version "0.7.4"
  sha256 "8f6cf74c65132341b9f6a1fe6d88465a573b4315b6d8c543616c8f04cfbd9dfa"

  url "https://github.com/jasonhotsauce/flow-gtd/releases/download/v#{version}/Flow-#{version}-macos-arm64.zip"
  name "Flow GTD"
  desc "Local-first, AI-augmented GTD native macOS app"
  homepage "https://github.com/jasonhotsauce/flow-gtd"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Flow.app"

  uninstall quit: "com.flowgtd.native"
end
