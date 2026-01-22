cask "flowwatch" do
  version "1.1.0"
  sha256 "02b0cbcee657b541fb4653d29793ecb003791decd93e3f3cb28003a02c2901c3"

  url "https://github.com/huangxida/FlowWatch/releases/download/v#{version}/FlowWatch.dmg"
  name "FlowWatch"
  desc "Menu bar network speed monitor and traffic stats"
  homepage "https://github.com/huangxida/FlowWatch"

  depends_on macos: ">= :ventura"

  app "FlowWatch.app"

  zap trash: [
    "~/Library/Application Support/FlowWatch",
    "~/Library/Containers/com.hxd.FlowWatch",
    "~/Library/Preferences/com.hxd.FlowWatch.plist",
  ]
end
