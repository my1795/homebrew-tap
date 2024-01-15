class ConductorCli < Formula
  desc "Cli app for conductor oss https://conductor-oss.org"
  homepage "https://github.com/my1795/conductor-cli"
  url "https://github.com/my1795/conductor-cli.git",
      tag:      "v1.0.6",
      revision: "e2a4e41851d37ae4ecc203ebe66ced0d295acd69"
  license "Apache-2.0"
  head "https://github.com/my1795/conductor-cli.git", branch: "main"
  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "-o", "conductor-cli"
    bin.install "conductor-cli"
  end

  test do
    system "#{bin}/conductor-cli", "-h"
  end
end
