class ConductorCli < Formula
  desc "Cli app for conductor oss https://conductor-oss.org"
  homepage "https://github.com/my1795/conductor-cli"
  url "https://github.com/my1795/conductor-cli.git",
      tag:      "v1.0.5",
      revision: "d03c3f2b17c97505a6f6211b32eacb2669e1af1b"
  license "Apache-2.0"
  head "https://github.com/my1795/conductor-cli.git", branch: "main"
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
    bin.install "conductor-cli"
  end

  test do
    system "#{bin}/conductor-cli", "-h"
  end
end
