# This formula is regenerated automatically by the release workflow in
# maziluiosif/oxi (.github/workflows/release.yml, "homebrew" job).
# Manual edits will be overwritten on the next release.
class Oxi < Formula
  desc "Standalone coding agent chat UI (Rust + egui)"
  homepage "https://github.com/maziluiosif/oxi"
  version "0.14.1"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/maziluiosif/oxi/releases/download/v0.14.1/oxi-macos-arm64.tar.gz"
    sha256 "b4e05b4080b374d28f94a98b65edcdf5e31caa00af45e900e64f1b0c2ec2d12a"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/maziluiosif/oxi/releases/download/v0.14.1/oxi-linux-x86_64.tar.gz"
    sha256 "f3552a473c12d68e1ff139df1ee1fa94667545fa5f610cadf0cd5e43d75cc2af"
  end

  def install
    if OS.mac?
      # The tarball holds a single top-level oxi.app; Homebrew strips a sole
      # top-level directory while staging, leaving Contents/ at buildpath.
      appdir = prefix/"oxi.app"
      if (buildpath/"oxi.app").exist?
        prefix.install "oxi.app"
      else
        appdir.install buildpath.children
      end
      bin.write_exec_script appdir/"Contents/MacOS/oxi"
    else
      bin.install "oxi"
    end
  end

  def caveats
    return unless OS.mac?

    <<~EOS
      Run `oxi` from a project directory to open it as the first workspace.

      To make the app visible in Launchpad / Spotlight, link the bundle:
        ln -sf "#{opt_prefix}/oxi.app" /Applications/oxi.app
    EOS
  end

  test do
    assert_predicate bin/"oxi", :exist?
  end
end
