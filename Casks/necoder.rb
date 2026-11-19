cask "necoder" do
  version "0.1.40"
  sha256 "4af18aad033cf0476e402253df7a46ef1879b12fe946717b313a54dc27bc8dc4"

  url "https://github.com/iKora128/necoder/releases/download/v#{version}/necoder.dmg"
  name "necoder"
  desc "Native code editor for working across projects with AI agents"
  homepage "https://github.com/iKora128/necoder"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "necoder.app"

  zap trash: [
    "~/Library/Application Support/necoder",
    "~/Library/Caches/dev.necoder.editor",
  ]
end
