cask "newfile" do
  version "0.2.3"
  sha256 "891f64f85b23dd178cd6b3e298c050563dd5cb57c89bad3057af9e57b13383e8"

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
