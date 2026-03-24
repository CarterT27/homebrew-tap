class TicktickCli < Formula
  desc "Fast, snappy TickTick CLI tool"
  homepage "https://github.com/CarterT27/ticktick-cli"
  url "https://github.com/CarterT27/ticktick-cli/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "952b2cab2e27e99ecdc720e5422a0a19cad46942d233c201188fd6bdd0c3c7af"
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
