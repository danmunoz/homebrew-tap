cask "cruftless" do
  version "1.3.0"
  sha256 "95fea64af1eaa6f5baf55c358f8c60bf4382094473e9c3c60f226853b5169023"

  url "https://github.com/danmunoz/cruftless/releases/download/v#{version}/Cruftless-#{version}.dmg"
  name "Cruftless"
  desc "Find and remove Xcode, CoreSimulator, and Android development data"
  homepage "https://github.com/danmunoz/cruftless"

  depends_on macos: :tahoe

  app "Cruftless.app"
end
