class Mausam < Formula
  desc "Beautiful weather in your terminal"
  homepage "https://github.com/codeptor/mausam"
  url "https://github.com/codeptor/mausam.git",
      tag:      "v1.0.6",
      revision: "5c2397b7961c2ef4a34aaed7994d1298bb7c3310"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "mausam", shell_output("#{bin}/mausam --version")
  end
end
