cask "cruftless" do
  version "1.4.0"
  sha256 "b6b631bc5ada98890f77e88b090307ed34e87914eef11bd534937e80d1677c68"

  url "https://github.com/danmunoz/cruftless/releases/download/v#{version}/Cruftless-#{version}.dmg"
  name "Cruftless"
  desc "Find and remove Xcode, CoreSimulator, and Android development data"
  homepage "https://github.com/danmunoz/cruftless"

  depends_on macos: :tahoe

  app "Cruftless.app"
end
