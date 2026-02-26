class Quoroom < Formula
  desc "Autonomous AI agent collective engine"
  homepage "https://quoroom.ai"
  url "https://github.com/quoroom-ai/room/releases/download/v#{version}/quoroom-v#{version}-darwin-universal.tar.gz"
  sha256 "ac71214d7d2c35793992de3d759615956962809e5fffb22a88093d3a200345f3"
  license "MIT"

  def install
    libexec.install Dir["*"]
    (bin/"quoroom").write_env_script libexec/"bin/quoroom"
  end

  test do
    assert_match "Quoroom", shell_output("#{bin}/quoroom help")
  end
end
