cask "cruftless" do
  version "1.4.0"
  sha256 "b6b631bc5ada98890f77e88b090307ed34e87914eef11bd534937e80d1677c68"

  url "https://github.com/danmunoz/cruftless/releases/download/v#{version}/Cruftless-#{version}.dmg"
  name "Cruftless"
  desc "Find and remove Xcode, CoreSimulator, and Android development data"
  homepage "https://github.com/danmunoz/cruftless"

  depends_on macos: :tahoe

  app "Cruftless.app"

  uninstall quit: "com.danmunoz.Cruftless"

  zap signal: [["TERM", "com.danmunoz.Cruftless"]],
      script: {
        executable:   "/bin/sh",
        args:         [
          "-c",
          <<~SH,
            # Body of the Homebrew cask's `zap script:`; run as /bin/sh -c "<this file>" sh APP BUNDLE_ID [TIMEOUT].
            # Undoes Cruftless's login item, reminders, privacy grants and preferences through the app's own
            # `--uninstall-cleanup` mode. Always exits 0 so a failure never blocks the rest of the zap.
            app=$1
            bundle_id=$2
            timeout=${3:-15}
            exe=$app/Contents/MacOS/Cruftless

            reset_privacy_grants() {
              /usr/bin/tccutil reset All "$bundle_id" >/dev/null 2>&1
            }

            [ -x "$exe" ] || exit 0

            # A copy that was never opened would raise a Gatekeeper prompt and block brew; it registered nothing either.
            quarantine=$(/usr/bin/xattr -p com.apple.quarantine "$app" 2>/dev/null) || quarantine=
            if [ -n "$quarantine" ]; then
              flags=${quarantine%%;*}
              case $flags in
                '' | *[!0-9a-fA-F]*) reset_privacy_grants; exit 0 ;;
              esac
              if [ $((0x$flags & 0x40)) -eq 0 ]; then
                reset_privacy_grants
                exit 0
              fi
            fi

            "$exe" --uninstall-cleanup &
            cleanup=$!
            (sleep "$timeout"; kill -9 "$cleanup" 2>/dev/null) >/dev/null 2>&1 &
            watchdog=$!
            wait "$cleanup"
            kill "$watchdog" 2>/dev/null
            exit 0
          SH
          "sh",
          "#{appdir}/Cruftless.app",
          "com.danmunoz.Cruftless",
        ],
        must_succeed: false,
      },
      trash:  [
        "~/Library/Application Support/CrashReporter/Cruftless_*.plist",
        "~/Library/Application Support/Cruftless",
        "~/Library/Caches/com.danmunoz.Cruftless",
        "~/Library/HTTPStorages/com.danmunoz.Cruftless",
        "~/Library/Preferences/com.danmunoz.Cruftless.plist",
        "~/Library/Saved Application State/com.danmunoz.Cruftless.savedState",
      ]
end
