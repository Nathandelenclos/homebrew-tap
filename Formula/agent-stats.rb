class AgentStats < Formula
  desc "Usage statistics for AI coding agents from local session logs"
  homepage "https://github.com/Nathandelenclos/agent-stats"
  version "0.8.0"
  license "MIT"

  on_intel do
    url "https://github.com/Nathandelenclos/agent-stats/releases/download/v0.8.0/agent-stats_0.8.0_darwin_amd64.tar.gz"
    sha256 "4a320c55d66337acf29dcab7ec45fb6cca928c7310266ba8c76c43bd55ad0bbe"
  end

  on_arm do
    url "https://github.com/Nathandelenclos/agent-stats/releases/download/v0.8.0/agent-stats_0.8.0_darwin_arm64.tar.gz"
    sha256 "b07c04370e2b986f4c781b46bf08e15db184edce10dd2b50cb5f250321281476"
  end

  depends_on :macos

  def install
    bin.install "agent-stats"
  end

  test do
    assert_match "agent-stats", shell_output("#{bin}/agent-stats --help 2>&1")
  end
end
