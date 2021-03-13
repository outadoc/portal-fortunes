require "formula"

class PortalFortunes < Formula
  desc "Portal quotes for the Unix fortune tool"
  homepage "https://github.com/outadoc/portal-fortunes"
  url "https://github.com/outadoc/portal-fortunes/archive/v1.0.tar.gz"
  sha256 "610da6390a296d1126e0bfb01e2f6c2adfd34591de6105274365b6d8fd32ea92"
  head "https://github.com/outadoc/portal-fortunes.git", branch => "develop"

  depends_on "fortune"

  def install
    system "make", "install"
  end

  test do
    shell_output("#{bin}/fortune glados", result = 0)
  end
end
