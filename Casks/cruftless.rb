cask "cruftless" do
  version "1.2.2"
  sha256 "9662bc32f553839f13d77b4762c62561efebccf278fc123c6593c6bfa2a31a50"

  url "https://github.com/danmunoz/cruftless/releases/download/v#{version}/Cruftless-#{version}.dmg"
  name "Cruftless"
  desc "Find and remove Xcode, CoreSimulator, and Android development data"
  homepage "https://github.com/danmunoz/cruftless"

  depends_on macos: :tahoe

  app "Cruftless.app"
end
