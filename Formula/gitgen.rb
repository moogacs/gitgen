class Gitgen < Formula
  desc "Generate unique git branch names based on username and timestamp"
  homepage "https://github.com/moogacs/gitgen"
  url "https://github.com/moogacs/gitgen/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "UPDATE_WITH_ACTUAL_SHA256_AFTER_RELEASE"
  license "MIT"

  def install
    bin.install "generate-branch.sh" => "gitgen"
  end

  test do
    system "#{bin}/gitgen", "--version"
  end
end 