class Walle < Formula
  desc "Linux-style wallpaper picker for macOS"
  homepage "https://github.com/AdvayGujar/walle"
  url "https://github.com/AdvayGujar/walle/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "baaf18c512b207e705cc4c2a3bd0c475450256b8e2f07e63971c508981e131a7"
  license "MIT"

  depends_on macos: ">= :sonoma"

  def install
    system "./scripts/build.sh", "--version", version.to_s, "--prefix", prefix
  end

  def caveats
    <<~EOS
      walle needs a directory of images before the picker has anything to show:

        walle add ~/Pictures/Wallpapers
        walle cache        # optional; makes the picker open instantly

      A bare `walle` opens the picker. Bind it to a hotkey with skhd:

        brew install koekeishiya/formulae/skhd
        skhd --start-service
        echo 'cmd + alt - w : #{opt_bin}/walle' >> ~/.config/skhd/skhdrc
        skhd --reload

      skhd also needs Accessibility access in System Settings > Privacy & Security
      > Accessibility; macOS cannot grant it from a script.

      Run `walle doctor` to check the whole install.
    EOS
  end

  test do
    assert_match "walle #{version}", shell_output("#{bin}/walle --version")
    assert_predicate bin/"walle-picker", :executable?
    assert_predicate prefix/"Walle.app/Contents/MacOS/walle-picker", :executable?
  end
end
