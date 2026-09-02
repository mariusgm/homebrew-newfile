cask "newfile" do
  version "0.2.2"
  sha256 "90b1e63335279b2890dd7a6cb0c3cababa3a555185c70fb07873b45278744fd9"

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
