# This cask is regenerated automatically by the release workflow in
# maziluiosif/oxi (.github/workflows/release.yml, "homebrew" job).
# Manual edits will be overwritten on the next release.
cask "oxi" do
  version "1.11.2"

  on_macos do
    sha256 "5509423a1e01f4484cd416d19edc8f9b06be6f10b89131316105035054bc8a28"
    url "https://github.com/maziluiosif/oxi/releases/download/v1.11.2/oxi-macos-arm64.tar.gz",
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
    sha256 "6b4e501816bd5c412d4edd9c23fee3583af5957c8dcb0c1ba709482f0ae0ae04"
    url "https://github.com/maziluiosif/oxi/releases/download/v1.11.2/oxi-linux-x86_64.tar.gz",
        verified: "github.com/maziluiosif/oxi/"

    depends_on arch: :x86_64

    binary "oxi"
  end

  name "oxi"
  desc "Native, local-first coding agent"
  homepage "https://maziluiosif.github.io/oxi/"
end
