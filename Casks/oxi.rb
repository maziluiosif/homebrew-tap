# This cask is regenerated automatically by the release workflow in
# maziluiosif/oxi (.github/workflows/release.yml, "homebrew" job).
# Manual edits will be overwritten on the next release.
cask "oxi" do
  version "0.22.0"

  on_macos do
    sha256 "3d4011020a9fdcb53442dbc47e71189d1836671f18adbcfaa4dcc84e5eb4f3b3"
    url "https://github.com/maziluiosif/oxi/releases/download/v0.22.0/oxi-macos-arm64.tar.gz",
        verified: "github.com/maziluiosif/oxi/"

    depends_on arch: :arm64
    depends_on macos: :catalina

    app "oxi.app"
    binary "#{appdir}/oxi.app/Contents/MacOS/oxi", target: "oxi"

    caveats <<~EOS
      oxi is ad-hoc signed but not Apple-notarized. Install it explicitly without
      quarantine only when you trust its source and published release:

        brew install --cask --no-quarantine maziluiosif/tap/oxi

      Run `oxi` from a project directory to open it as the first workspace.
    EOS
  end

  on_linux do
    sha256 "bd725da0865625d16a9402af71c62302d8949902403971170cff5eb8b19a0af9"
    url "https://github.com/maziluiosif/oxi/releases/download/v0.22.0/oxi-linux-x86_64.tar.gz",
        verified: "github.com/maziluiosif/oxi/"

    depends_on arch: :x86_64

    binary "oxi"
  end

  name "oxi"
  desc "Native, local-first coding agent"
  homepage "https://maziluiosif.github.io/oxi/"
end
