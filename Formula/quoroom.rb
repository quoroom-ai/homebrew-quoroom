class Quoroom < Formula
  desc "Autonomous AI agent collective engine"
  homepage "https://quoroom.ai"
  url "https://github.com/quoroom-ai/room/releases/download/v#{version}/quoroom-v#{version}-darwin-universal.tar.gz"
  sha256 "2cfa8c80172dbf29515ba8e629ba28a6501c06ac6cc9e28c52d07a23607224b3"
  license "MIT"

  def install
    libexec.install Dir["*"]
    (bin/"quoroom").write_env_script libexec/"bin/quoroom"
  end

  test do
    assert_match "Quoroom", shell_output("#{bin}/quoroom help")
  end
end
