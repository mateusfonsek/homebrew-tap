cask "deckmux" do
  version "0.3.0"
  sha256 "52d1a915a033b8dde62a4d216b6342481100537df6b987f0247d564949b8f55f"

  url "https://github.com/mateusfonsek/deckmux/releases/download/v#{version}/Deckmux-#{version}-universal.dmg"
  name "Deckmux"
  desc "Command center for Claude Code with libghostty terminals by workspace"
  homepage "https://github.com/mateusfonsek/deckmux"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Deckmux.app"

  # Deckmux is not signed with an Apple Developer ID, so macOS would block
  # its first launch; installing from this tap is the user's go-ahead.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Deckmux.app"],
                          writable_paths: ["Deckmux.app"], writable_base: :appdir
  end

  zap trash: [
    "~/Library/Application Support/Deckmux",
    "~/Library/Preferences/dev.fonsek.deckmux.plist",
    "~/Library/Saved Application State/dev.fonsek.deckmux.savedState",
  ]
end
