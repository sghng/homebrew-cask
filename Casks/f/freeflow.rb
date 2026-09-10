cask "freeflow" do
  version "1.2.1"
  sha256 "6580ddb7a4a1bf97df11cb45707c47b663a8c5d25fad7769236d7c32b1cd8b93"

  url "https://github.com/zachlatta/freeflow/releases/download/v#{version}/FreeFlow.dmg"
  name "FreeFlow"
  desc "Free and fast alternative to Wispr Flow"
  homepage "https://freeflow.zachlatta.com/"

  livecheck do
    url "https://github.com/zachlatta/freeflow/releases/latest"
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "FreeFlow.app"

  zap trash: [
    "~/Library/Application Support/com.zachlatta.freeflow",
    "~/Library/Caches/com.zachlatta.freeflow",
    "~/Library/Preferences/com.zachlatta.freeflow.plist",
    "~/Library/Saved Application State/com.zachlatta.freeflow.savedState",
    "~/Library/WebKit/com.zachlatta.freeflow",
  ]
end
