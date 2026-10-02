# This cask is regenerated automatically by the release workflow in
# maziluiosif/oxi (.github/workflows/release.yml, "homebrew" job).
# Manual edits will be overwritten on the next release.
cask "oxi" do
  version "1.8.0"

  on_macos do
    sha256 "1e8f458266e08ec026de55c00fcfdffa4e2e20410f07578d02968df7a640ed0e"
    url "https://github.com/maziluiosif/oxi/releases/download/v1.8.0/oxi-macos-arm64.tar.gz",
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
    sha256 "5194c3377918c4388c9675d157e4f6a2c1ab8b81572925b1158929fa2dfc1051"
    url "https://github.com/maziluiosif/oxi/releases/download/v1.8.0/oxi-linux-x86_64.tar.gz",
        verified: "github.com/maziluiosif/oxi/"

    depends_on arch: :x86_64

    binary "oxi"
  end

  name "oxi"
  desc "Native, local-first coding agent"
  homepage "https://maziluiosif.github.io/oxi/"
end
