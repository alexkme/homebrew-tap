class Memtree < Formula
  desc "Lightweight macOS menu bar memory monitor with a built-in CLI"
  homepage "https://github.com/alexkme/memtree"
  # scripts/release.sh in the memtree repo rewrites the url and sha256 lines on every release.
  url "https://github.com/alexkme/memtree/releases/download/v0.1.1/memtree-0.1.1.tar.gz"
  sha256 "0990f48be291fab069baf290f4a66c3dac09ab1f4db72044eb6ab7f80247d2ce"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on xcode: ["26.0", :build]
  depends_on arch: :arm64
  depends_on macos: :tahoe

  def install
    # Homebrew's own sandbox conflicts with SwiftPM's, so SwiftPM's is turned off.
    system "make", "app", "SWIFT_BUILD_FLAGS=--disable-sandbox"
    prefix.install "Memtree.app"
    bin.install_symlink prefix/"Memtree.app/Contents/MacOS/memtree"
  end

  def caveats
    <<~EOS
      memtree is a menu bar app. Start it with:
        open "#{opt_prefix}/Memtree.app"

      "Start at Login" only works when memtree runs as Memtree.app, so start it
      with the command above. After `brew upgrade`, start it once from that path
      again if the login item stops working.

      The `memtree` command (status, top, tree, history, --version, update-check)
      is already on your PATH.
    EOS
  end

  test do
    assert_match "memtree #{version} (", shell_output("#{bin}/memtree --version")
    assert_match "Usage", shell_output("#{bin}/memtree --help")
  end
end
