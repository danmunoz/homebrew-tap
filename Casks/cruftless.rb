cask "cruftless" do
  version "1.2.0"
  sha256 "39bdadb7e4edae99df379322c83cb9e0beae3d65c678bad2872d479538f66069"

  url "https://github.com/danmunoz/cruftless/releases/download/v#{version}/Cruftless-#{version}.dmg"
  name "Cruftless"
  desc "Find and remove Xcode, CoreSimulator, and Android development data"
  homepage "https://github.com/danmunoz/cruftless"

  depends_on macos: :tahoe

  app "Cruftless.app"
end
