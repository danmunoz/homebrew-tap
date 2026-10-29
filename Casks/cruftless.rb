cask "cruftless" do
  version "1.2.3"
  sha256 "e57a08f3bc1eaf80065f6a71ccc5e9ea8aab16ff44221c6f5b583002392606bf"

  url "https://github.com/danmunoz/cruftless/releases/download/v#{version}/Cruftless-#{version}.dmg"
  name "Cruftless"
  desc "Find and remove Xcode, CoreSimulator, and Android development data"
  homepage "https://github.com/danmunoz/cruftless"

  depends_on macos: :tahoe

  app "Cruftless.app"
end
