# This cask is regenerated automatically by the release workflow in
# maziluiosif/oxi (.github/workflows/release.yml, "homebrew" job).
# Manual edits will be overwritten on the next release.
cask "oxi" do
  version "1.13.0"

  on_macos do
    sha256 "4da23e2c2aab02ced3e71c065442eb9ca2a073230c9b0820c89b7ab488101697"
    url "https://github.com/maziluiosif/oxi/releases/download/v1.13.0/oxi-macos-arm64.tar.gz",
        verified: "github.com/maziluiosif/oxi/"

    depends_on arch: :arm64
    depends_on macos: :catalina

    app "oxi.app"
    binary "#{appdir}/oxi.app/Contents/MacOS/oxi", target: "oxi"

    caveats <<~EOS
      oxi is ad-hoc signed but not Apple-notarized, so macOS quarantines it on install.
      Clear the quarantine attribute once, then launch it:

        xattr -cr /Applications/oxi.app
        open /Applications/oxi.app

      Only do this for software you trust, and do not disable Gatekeeper globally.

      Run `oxi` from a project directory to open it as the first workspace.
    EOS
  end

  on_linux do
    sha256 "e2917dc8446a2325ad5137b5215a4c25b07edfc60ba9e343fbbf29de0f63f0c5"
    url "https://github.com/maziluiosif/oxi/releases/download/v1.13.0/oxi-linux-x86_64.tar.gz",
        verified: "github.com/maziluiosif/oxi/"

    depends_on arch: :x86_64

    binary "oxi"
  end

  name "oxi"
  desc "Native, local-first coding agent"
  homepage "https://maziluiosif.github.io/oxi/"
end
