cask "cruftless" do
  version "1.2.1"
  sha256 "25ea47e78163c52fa734bef4a642a3fa651b198c58a184b67e7354aff51065ea"

  url "https://github.com/danmunoz/cruftless/releases/download/v#{version}/Cruftless-#{version}.dmg"
  name "Cruftless"
  desc "Find and remove Xcode, CoreSimulator, and Android development data"
  homepage "https://github.com/danmunoz/cruftless"

  depends_on macos: :tahoe

  app "Cruftless.app"
end
