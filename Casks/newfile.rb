cask "newfile" do
  version "0.2.4"
  sha256 "dc94d5342cbd545e074eaafa94ad12d1b931a6016b18110fd777b3fc3b2c736f"

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
