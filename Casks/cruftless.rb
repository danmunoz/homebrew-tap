cask "cruftless" do
  version "1.0"
  sha256 "4eb21c68ff30641d55a15b01c703a1b5f3a630e9b7eeac605feb67d34d539a82"

  url "https://github.com/danmunoz/cruftless/releases/download/v#{version}/Cruftless-#{version}.dmg"
  name "Cruftless"
  desc "Find and remove Xcode and CoreSimulator disk bloat"
  homepage "https://github.com/danmunoz/cruftless"

  depends_on macos: ">= :tahoe"

  app "Cruftless.app"
end
