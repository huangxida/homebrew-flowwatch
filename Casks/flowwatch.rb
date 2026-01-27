cask "flowwatch" do
  version "1.2.0"
  sha256 "dfdf7056730003e71944b70dc66729158f165932985ea4fdf0ed14c9b6e39137"

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
