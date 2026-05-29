class Mausam < Formula
  desc "Beautiful weather in your terminal"
  homepage "https://github.com/codeptor/mausam"
  url "https://github.com/codeptor/mausam.git",
      tag:      "v1.0.5",
      revision: "0b7dce7f218ff98a9cd7c7ad90870674ad1bd98c"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "mausam", shell_output("#{bin}/mausam --version")
  end
end
