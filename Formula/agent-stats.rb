class AgentStats < Formula
  desc "Usage statistics for AI coding agents from local session logs"
  homepage "https://github.com/Nathandelenclos/agent-stats"
  version "0.12.0"
  license "MIT"

  on_intel do
    url "https://github.com/Nathandelenclos/agent-stats/releases/download/v0.12.0/agent-stats_0.12.0_darwin_amd64.tar.gz"
    sha256 "aa5a48db75ee56c1ab74b212ed8113a27f10f13910fb1af6d0183116824cad5e"
  end

  on_arm do
    url "https://github.com/Nathandelenclos/agent-stats/releases/download/v0.12.0/agent-stats_0.12.0_darwin_arm64.tar.gz"
    sha256 "b766e7f7b61f677825fce691809a557a57cbedbd68535568dd29545cfea5cf8c"
  end

  depends_on :macos

  def install
    bin.install "agent-stats"
  end

  test do
    assert_match "agent-stats", shell_output("#{bin}/agent-stats --help 2>&1")
  end
end
