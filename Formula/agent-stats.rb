class AgentStats < Formula
  desc "Usage statistics for AI coding agents from local session logs"
  homepage "https://github.com/Nathandelenclos/agent-stats"
  version "0.13.0"
  license "MIT"

  on_intel do
    url "https://github.com/Nathandelenclos/agent-stats/releases/download/v0.13.0/agent-stats_0.13.0_darwin_amd64.tar.gz"
    sha256 "e36f44331b3a3ee3699ea40340024e0c4a8b546eb06b37af2210923f29b7375a"
  end

  on_arm do
    url "https://github.com/Nathandelenclos/agent-stats/releases/download/v0.13.0/agent-stats_0.13.0_darwin_arm64.tar.gz"
    sha256 "ce0138d70b77688901b425dd2ee2ba8e81b10bccd082b423824b1b71529b5b3c"
  end

  depends_on :macos

  def install
    bin.install "agent-stats"
  end

  test do
    assert_match "agent-stats", shell_output("#{bin}/agent-stats --help 2>&1")
  end
end
