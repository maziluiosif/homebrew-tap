# This formula is regenerated automatically by the release workflow in
# maziluiosif/oxi (.github/workflows/release.yml, "homebrew" job).
# Manual edits will be overwritten on the next release.
class Oxi < Formula
  desc "Standalone coding agent chat UI (Rust + egui)"
  homepage "https://github.com/maziluiosif/oxi"
  version "0.19.0"
  license "MIT"

  on_macos do
    depends_on arch: :arm64
    url "https://github.com/maziluiosif/oxi/releases/download/v0.19.0/oxi-macos-arm64.tar.gz"
    sha256 "e83666f4133a4e1ead2a01b7d903d710d768918d9b6af5a6c53ff17342b4fee3"
  end

  on_linux do
    depends_on arch: :x86_64
    url "https://github.com/maziluiosif/oxi/releases/download/v0.19.0/oxi-linux-x86_64.tar.gz"
    sha256 "0c283e1735b81b1e58ed0374911ddf05c9822bcda00c5d491c0279d3f3a4227a"
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
