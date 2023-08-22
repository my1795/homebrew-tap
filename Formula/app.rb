# Generated with JReleaser 1.7.0 at 2023-08-22T22:09:24.67678+03:00
class App < Formula
  desc "Netflix Conductor CLi"
  homepage "https://github.com/my1795/conductor-commander"
  url "https://github.com/my1795/conductor-commander/releases/download/v1.0.0/app-1.0.0-osx-aarch_64.zip"
  version "1.0.0"
  sha256 "6d93b61701b505cce1ab40858301272a650f97eb863240c22cb79a7070757f39"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cnd.sh" => "cnd"
  end

  test do
    output = shell_output("#{bin}/cnd --version")
    assert_match "1.0.0", output
  end
end
