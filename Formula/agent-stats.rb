class AgentStats < Formula
  desc "Usage statistics for AI coding agents from local session logs"
  homepage "https://github.com/Nathandelenclos/agent-stats"
  version "0.9.0"
  license "MIT"

  on_intel do
    url "https://github.com/Nathandelenclos/agent-stats/releases/download/v0.9.0/agent-stats_0.9.0_darwin_amd64.tar.gz"
    sha256 "9d8b4fc815953c62c0051f865941317639de74d1d89c33cde104b5bebb0f868c"
  end

  on_arm do
    url "https://github.com/Nathandelenclos/agent-stats/releases/download/v0.9.0/agent-stats_0.9.0_darwin_arm64.tar.gz"
    sha256 "fb1698a507a73c7be7bf65dfbdfffbf45bb3458c44bcef7adaf4be6af42742dc"
  end

  depends_on :macos

  def install
    bin.install "agent-stats"
  end

  test do
    assert_match "agent-stats", shell_output("#{bin}/agent-stats --help 2>&1")
  end
end
