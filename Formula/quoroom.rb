class Quoroom < Formula
  desc "Autonomous AI agent collective engine"
  homepage "https://quoroom.ai"
  url "https://github.com/quoroom-ai/room/releases/download/v#{version}/quoroom-v#{version}-darwin-universal.tar.gz"
  sha256 "ef678e7f8b690e5d3a7be03dad5cb0f51ce6f25953140b1b09993ebfc1813c32"
  license "MIT"

  def install
    libexec.install Dir["*"]
    (bin/"quoroom").write_env_script libexec/"bin/quoroom"
  end

  test do
    assert_match "Quoroom", shell_output("#{bin}/quoroom help")
  end
end
