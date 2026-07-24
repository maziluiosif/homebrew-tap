# This cask is regenerated automatically by the release workflow in
# maziluiosif/oxi (.github/workflows/release.yml, "homebrew" job).
# Manual edits will be overwritten on the next release.
cask "oxi" do
  version "0.22.1"

  on_macos do
    sha256 "9c934ce14b5b518e3995d3b701c4b897ab2342028180e93318111ea772020379"
    url "https://github.com/maziluiosif/oxi/releases/download/v0.22.1/oxi-macos-arm64.tar.gz",
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
    sha256 "7b6352a8d94592adea165e976111246caa354dfc5f07902ac9947477a8d55dcc"
    url "https://github.com/maziluiosif/oxi/releases/download/v0.22.1/oxi-linux-x86_64.tar.gz",
        verified: "github.com/maziluiosif/oxi/"

    depends_on arch: :x86_64

    binary "oxi"
  end

  name "oxi"
  desc "Native, local-first coding agent"
  homepage "https://maziluiosif.github.io/oxi/"
end
