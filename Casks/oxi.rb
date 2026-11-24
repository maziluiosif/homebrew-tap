# This cask is regenerated automatically by the release workflow in
# maziluiosif/oxi (.github/workflows/release.yml, "homebrew" job).
# Manual edits will be overwritten on the next release.
cask "oxi" do
  version "1.45.0"

  on_macos do
    sha256 "4318d9e15fd9e2b0a689eaf0a1fb6be36fdd73e206426d6b9e8de2ad9f48abea"
    url "https://github.com/maziluiosif/oxi/releases/download/v1.45.0/oxi-macos-arm64.tar.gz",
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
    sha256 "145a2af9ee16d887c5d93dc4a976c99006a9fc9326411e216928eb918a38176b"
    url "https://github.com/maziluiosif/oxi/releases/download/v1.45.0/oxi-linux-x86_64.tar.gz",
        verified: "github.com/maziluiosif/oxi/"

    depends_on arch: :x86_64

    binary "oxi"
  end

  name "oxi"
  desc "Native, local-first coding agent"
  homepage "https://maziluiosif.github.io/oxi/"
end
