require "formula"

class PortalFortunes < Formula
  desc "Portal quotes for the Unix fortune tool"
  homepage "https://github.com/outadoc/portal-fortunes"
  url "https://github.com/outadoc/portal-fortunes/releases/download/v1.0/portal-fortunes-darwin-1.0.tar.gz"
  #sha256 "c4bb34abd18ef743572c085fcbaf0a4d5c0770a7c889ae5ce422213bb35e80d4"
  head "https://github.com/outadoc/portal-fortunes.git", branch => "develop"

  depends_on "fortune"

  def install
    system "make", "install"
  end

  test do
    shell_output("#{bin}/fortune glados", result = 0)
  end
end
