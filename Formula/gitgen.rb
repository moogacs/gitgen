class Gitgen < Formula
  desc "Generate unique git branch names based on username and timestamp"
  homepage "https://github.com/moogacs/homebrew-gitgen"
  url "https://github.com/moogacs/homebrew-gitgen/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "d2638e774efc48e6d54137d8a30ff8f8a4ba3b8a5a556ee99615dc7829953813"
  license "MIT"

  def install
    bin.install "generate-branch.sh" => "gitgen"
  end

  test do
    system "#{bin}/gitgen", "--version"
  end
end 