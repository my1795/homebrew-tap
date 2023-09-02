# Generated with JReleaser 1.7.0 at 2023-09-02T12:43:12.191738+03:00
class ConductorCommander < Formula
  desc "Netflix Conductor CLi"
  homepage "https://github.com/my1795/conductor-commander"
  url "https://github.com/my1795/conductor-commander/releases/download/v1.0.2/conductor-commander-1.0.2-osx-aarch_64.zip"
  version "1.0.2"
  sha256 "c17eb44b2abfcdaea9739d9812b88e5b5abe339c9e6d4595aff2ee8b9b355e38"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/cnd.sh" => "cnd"
  end

  test do
    output = shell_output("#{bin}/cnd --version")
    assert_match "1.0.2", output
  end
end
