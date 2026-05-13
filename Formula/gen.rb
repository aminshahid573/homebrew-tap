class Gen < Formula
  desc "Swiss Army knife CLI tool for developers"
  homepage "https://github.com/aminshahid573/gen"
  url "https://github.com/aminshahid573/gen/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "077deb8ea9c359ac3b5c0cf5f185291a31fa13c16ddfd6ac7fc9f232a59f125b"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "gen", shell_output("#{bin}/gen --help")
  end
end
