class AgentStats < Formula
  desc "Usage statistics for AI coding agents from local session logs"
  homepage "https://github.com/Nathandelenclos/agent-stats"
  version "0.7.0"
  license "MIT"

  on_intel do
    url "https://github.com/Nathandelenclos/agent-stats/releases/download/v0.7.0/agent-stats_0.7.0_darwin_amd64.tar.gz"
    sha256 "80f4139aa06969aa8c3150b75f3eb4c48c63d5c28f262fa918c61e070ddd1193"
  end

  on_arm do
    url "https://github.com/Nathandelenclos/agent-stats/releases/download/v0.7.0/agent-stats_0.7.0_darwin_arm64.tar.gz"
    sha256 "e055eb001f907e2618099b3354bddb37f5cdacbe8f5248dad116df4303f8749f"
  end

  depends_on :macos

  def install
    bin.install "agent-stats"
  end

  test do
    assert_match "agent-stats", shell_output("#{bin}/agent-stats --help 2>&1")
  end
end
