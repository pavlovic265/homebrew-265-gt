class Gt < Formula
  desc "CLI for 265-gt"
  homepage "https://github.com/pavlovic265/265-gt"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pavlovic265/265-gt/releases/download/v0.50.6/265-gt_Darwin_arm64.tar.gz"
      sha256 "sha256:d4927bf9e2e4291e139495cbee0cb214e04c7fc9960a86a0f02140d2873001d7"
    end
    on_intel do
      url "https://github.com/pavlovic265/265-gt/releases/download/v0.50.6/265-gt_Darwin_x86_64.tar.gz"
      sha256 "sha256:520a5908d1979193f901b08e1a2f0dc8ccc1376e9c5794aa56e3d97e2e1026d7"
    end
  end

  def install
    bin.install "gt"
  end

  test do
    system "#{bin}/gt", "--version"
  end
end
