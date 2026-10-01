# This cask is regenerated automatically by the release workflow in
# maziluiosif/oxi (.github/workflows/release.yml, "homebrew" job).
# Manual edits will be overwritten on the next release.
cask "oxi" do
  version "1.4.0"

  on_macos do
    sha256 "e16e83f3cde0ead2efe4ecb8e27f9d7e6d4470d34380ef74e978de5d87d3f967"
    url "https://github.com/maziluiosif/oxi/releases/download/v1.4.0/oxi-macos-arm64.tar.gz",
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
    sha256 "73bbe2b03b549890afe0e3441675edd68e387a50e47b8ba3d515a1c1b951ae48"
    url "https://github.com/maziluiosif/oxi/releases/download/v1.4.0/oxi-linux-x86_64.tar.gz",
        verified: "github.com/maziluiosif/oxi/"

    depends_on arch: :x86_64

    binary "oxi"
  end

  name "oxi"
  desc "Native, local-first coding agent"
  homepage "https://maziluiosif.github.io/oxi/"
end
