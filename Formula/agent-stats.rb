class AgentStats < Formula
  desc "Usage statistics for AI coding agents from local session logs"
  homepage "https://github.com/Nathandelenclos/agent-stats"
  version "0.10.0"
  license "MIT"

  on_intel do
    url "https://github.com/Nathandelenclos/agent-stats/releases/download/v0.10.0/agent-stats_0.10.0_darwin_amd64.tar.gz"
    sha256 "a6049d168687c330aa4c2593a48c6eff0ce2903f0cc5f61702c069e5d887290b"
  end

  on_arm do
    url "https://github.com/Nathandelenclos/agent-stats/releases/download/v0.10.0/agent-stats_0.10.0_darwin_arm64.tar.gz"
    sha256 "7ea31a4a32c3e23f408d9df422227a7cf5ef42dd3f01a81aae1b0b2ffff71edd"
  end

  depends_on :macos

  def install
    bin.install "agent-stats"
  end

  test do
    assert_match "agent-stats", shell_output("#{bin}/agent-stats --help 2>&1")
  end
end
