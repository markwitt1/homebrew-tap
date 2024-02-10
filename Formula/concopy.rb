class Concopy < Formula
  desc "CLI tool to copy many files, providing better context for AI assistants"
  homepage "https://github.com/markwitt1/concopy"
  license "MIT"

  on_arm do
    url "https://github.com/markwitt1/concopy/releases/download/v0.0.1/concopy-darwin-arm64"
    sha256 "9fb7f7be4b3bd2730c24645876920080f2f91ce5e9539fa64401efb30ee37be2"
  end

  on_intel do
    url "https://github.com/markwitt1/concopy/releases/download/v0.0.1/concopy-darwin-amd64"
    sha256 "668134c34226288d6fe9b8195cdfa5f3f015466f93f1af2fda054eb42e8af5e"
  end

  def install
    bin.install "concopy-darwin-#{Hardware::CPU.arch}" => "concopy"
  end

  test do
    system "#{bin}/concopy", "--version"
  end
end
