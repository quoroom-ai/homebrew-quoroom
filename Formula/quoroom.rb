class Quoroom < Formula
  desc "Autonomous AI agent collective engine"
  homepage "https://quoroom.ai"
  url "https://github.com/quoroom-ai/room/releases/download/v#{version}/quoroom-v#{version}-darwin-universal.tar.gz"
  sha256 "272f00cce2df1131491e12f18c7faee39443cbb1803d688357ec806acb761e5b"
  license "MIT"

  def install
    libexec.install Dir["*"]
    (bin/"quoroom").write_env_script libexec/"bin/quoroom"
  end

  test do
    assert_match "Quoroom", shell_output("#{bin}/quoroom help")
  end
end
