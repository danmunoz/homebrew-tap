cask "cruftless" do
  version "1.3.1"
  sha256 "74304943058f7d2abb7ba266f29769748e682c0bd90e43e1a2b042cd3ebc5f24"

  url "https://github.com/danmunoz/cruftless/releases/download/v#{version}/Cruftless-#{version}.dmg"
  name "Cruftless"
  desc "Find and remove Xcode, CoreSimulator, and Android development data"
  homepage "https://github.com/danmunoz/cruftless"

  depends_on macos: :tahoe

  app "Cruftless.app"
end
