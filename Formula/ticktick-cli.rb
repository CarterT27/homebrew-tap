class TicktickCli < Formula
  desc "Fast, snappy TickTick CLI tool"
  homepage "https://github.com/CarterT27/ticktick-cli"
  url "https://github.com/CarterT27/ticktick-cli.git",
      tag: "v0.1.0",
      revision: "384faae322630741e153bf9964d66ef9d2caad58"
  license "MIT"
  head "https://github.com/CarterT27/ticktick-cli.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_match "A fast, snappy TickTick CLI tool", shell_output("#{bin}/tt --help")
  end
end
