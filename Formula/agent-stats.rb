class AgentStats < Formula
  desc "Usage statistics for AI coding agents from local session logs"
  homepage "https://github.com/Nathandelenclos/agent-stats"
  version "0.11.0"
  license "MIT"

  on_intel do
    url "https://github.com/Nathandelenclos/agent-stats/releases/download/v0.11.0/agent-stats_0.11.0_darwin_amd64.tar.gz"
    sha256 "6952ddb48fe52b9d6e13f53436c3fa5f2c9adc3e9ff11945f579d69d2399236a"
  end

  on_arm do
    url "https://github.com/Nathandelenclos/agent-stats/releases/download/v0.11.0/agent-stats_0.11.0_darwin_arm64.tar.gz"
    sha256 "14497bc7301e43459a13b0343384e00bc33ea3d8a9f94c063d047730f84996da"
  end

  depends_on :macos

  def install
    bin.install "agent-stats"
  end

  test do
    assert_match "agent-stats", shell_output("#{bin}/agent-stats --help 2>&1")
  end
end
