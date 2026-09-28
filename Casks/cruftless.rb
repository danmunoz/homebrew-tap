cask "cruftless" do
  version "1.1.0"
  sha256 "a60df437b9e0883779d84b85d51fc0649e86779d01c7935821eee93e448669e3"

  url "https://github.com/danmunoz/cruftless/releases/download/v#{version}/Cruftless-#{version}.dmg"
  name "Cruftless"
  desc "Find and remove Xcode and CoreSimulator disk bloat"
  homepage "https://github.com/danmunoz/cruftless"

  depends_on macos: :tahoe

  app "Cruftless.app"
end
