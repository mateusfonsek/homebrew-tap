cask "finoinc" do
  version "0.14.1"
  sha256 "9308c3f491f2d21fc1040db65f206ee616eb9cb06c96be6f0e1a2601fffcf0cc"

  url "https://github.com/MateusFonseK/finoinc/releases/download/v#{version}/Finoinc_universal.dmg"
  name "Finoinc"
  desc "Personal finance that never leaves your computer"
  homepage "https://github.com/MateusFonseK/finoinc"

  livecheck do
    url :url
    strategy :github_latest
  end

  # Finoinc updates itself from Settings once the user opts in.
  auto_updates true
  depends_on macos: :monterey

  app "Finoinc.app"

  # Finoinc is not signed with an Apple Developer ID, so macOS would block
  # its first launch; installing from this tap is the user's go-ahead.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Finoinc.app"],
                          writable_paths: ["Finoinc.app"], writable_base: :appdir
  end

  # The first entry is the user's financial database: `--zap` deletes it.
  zap trash: [
    "~/Library/Application Support/app.finoinc",
    "~/Library/Caches/app.finoinc",
    "~/Library/Preferences/app.finoinc.plist",
    "~/Library/Saved Application State/app.finoinc.savedState",
    "~/Library/WebKit/app.finoinc",
  ]

  caveats <<~EOS
    Your data lives in ~/Library/Application Support/app.finoinc/finoinc.db.
    `brew uninstall --zap --cask finoinc` deletes it; back it up first
    (Settings → Backup).
  EOS
end
