class Drelva < Formula
  desc "Lightweight cross-platform command-line utility"
  homepage "https://dsongtn.github.io/drelva-distribution/"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/dsongtn/drelva-distribution/releases/download/v0.1.1/drelva-0.1.1-darwin-arm64.tar.gz"
      sha256 "2acf979f6da476212fd57b81dec1700beb18fcd7ee74a5f72be286c9ad3c36c8"
    end
    on_intel do
      url "https://github.com/dsongtn/drelva-distribution/releases/download/v0.1.1/drelva-0.1.1-darwin-amd64.tar.gz"
      sha256 "7e448eb7ab75c745dfba70f640a300387429bef7ac4f7618ee85d10305a90258"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dsongtn/drelva-distribution/releases/download/v0.1.1/drelva-0.1.1-linux-arm64.tar.gz"
      sha256 "a326ecd28a8d36a9f915d0da84d3906101170c9a8f4637221694078819b81e83"
    end
    on_intel do
      url "https://github.com/dsongtn/drelva-distribution/releases/download/v0.1.1/drelva-0.1.1-linux-amd64.tar.gz"
      sha256 "e756745e9187d0757d59ae8ed693126f9c17be604462d8e562e579ecf25a6cef"
    end
  end

  def install
    binary = Dir["drelva-0.1.1-*/drelva"].first
    raise "Drelva executable missing from release archive" if binary.nil?

    bin.install binary => "drelva"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/drelva version")
  end
end
