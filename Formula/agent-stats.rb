class AgentStats < Formula
  desc "Usage statistics for AI coding agents from local session logs"
  homepage "https://github.com/Nathandelenclos/agent-stats"
  version "0.6.0"
  license "MIT"

  on_intel do
    url "https://github.com/Nathandelenclos/agent-stats/releases/download/v0.6.0/agent-stats_0.6.0_darwin_amd64.tar.gz"
    sha256 "9d24e359e1dbb82fc36ac5292f418bef1b99d696679580c8f12e1974ebac9275"
  end

  on_arm do
    url "https://github.com/Nathandelenclos/agent-stats/releases/download/v0.6.0/agent-stats_0.6.0_darwin_arm64.tar.gz"
    sha256 "970b457dc064d4dd7e6bfc7479d0deefc56961b76bc32f0d4d825abc8b731327"
  end

  depends_on :macos

  def install
    bin.install "agent-stats"
  end

  test do
    assert_match "agent-stats", shell_output("#{bin}/agent-stats --help 2>&1")
  end
end
