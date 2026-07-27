# This cask is regenerated automatically by the release workflow in
# maziluiosif/oxi (.github/workflows/release.yml, "homebrew" job).
# Manual edits will be overwritten on the next release.
cask "oxi" do
  version "0.23.0"

  on_macos do
    sha256 "999bac83d60f9787ff24b7ef08cbdfbd638dd7ceea3106a4b4625fcac9a0ca92"
    url "https://github.com/maziluiosif/oxi/releases/download/v0.23.0/oxi-macos-arm64.tar.gz",
        verified: "github.com/maziluiosif/oxi/"

    depends_on arch: :arm64
    depends_on macos: :catalina

    app "oxi.app"
    binary "#{appdir}/oxi.app/Contents/MacOS/oxi", target: "oxi"

    caveats <<~EOS
      oxi is ad-hoc signed but not Apple-notarized. Install it explicitly without
      quarantine only when you trust its source and published release:

        HOMEBREW_CASK_OPTS="--no-quarantine" brew install --cask maziluiosif/tap/oxi

      Run `oxi` from a project directory to open it as the first workspace.
    EOS
  end

  on_linux do
    sha256 "903737836594f192f33d507d6995e8bb740be047d6f0c86d3cf26146f4ce448a"
    url "https://github.com/maziluiosif/oxi/releases/download/v0.23.0/oxi-linux-x86_64.tar.gz",
        verified: "github.com/maziluiosif/oxi/"

    depends_on arch: :x86_64

    binary "oxi"
  end

  name "oxi"
  desc "Native, local-first coding agent"
  homepage "https://maziluiosif.github.io/oxi/"
end
