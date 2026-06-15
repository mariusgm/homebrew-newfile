cask "newfile" do
  version "0.2.1"
  sha256 "f555e381ddb97965cf71c3e2e08d554475ad1093a7f841aacd4fd2ce4fb52668"

  url "https://github.com/mariusgm/newfile/releases/download/v#{version}/NewFile.dmg"
  name "NewFile"
  desc "'New File' button for Finder"
  homepage "https://github.com/mariusgm/newfile"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "NewFile.app"

  zap trash: [
    "~/Library/Containers/dev.newfile.NewFile",
    "~/Library/Containers/dev.newfile.NewFile.NewFileExtension",
    "~/Library/Group Containers/group.dev.newfile.NewFile",
    "~/Library/Group Containers/Q7VD7MTRL8.dev.newfile.NewFile",
  ]
end
