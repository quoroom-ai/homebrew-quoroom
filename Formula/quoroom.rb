class Quoroom < Formula
  desc "Autonomous AI agent collective engine"
  homepage "https://quoroom.ai"
  url "https://github.com/quoroom-ai/room/releases/download/v#{version}/quoroom-v#{version}-darwin-universal.tar.gz"
  sha256 "b61eec7a905afb5b8b6c4a09f81e848fd23139f5757d1356c4c09fa66e1910ce"
  license "MIT"

  def install
    libexec.install Dir["*"]
    (bin/"quoroom").write_env_script libexec/"bin/quoroom"
  end

  test do
    assert_match "Quoroom", shell_output("#{bin}/quoroom help")
  end
end
