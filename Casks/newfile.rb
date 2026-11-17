cask "newfile" do
  version "0.2.5"
  sha256 "aa6f4764c283be6fb832689abdb788f62f4884b48b62222614443fb2c41cf41e"

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

  caveats <<~EOS
    Launch NewFile once to register its Finder extension:
      open -a NewFile
    Then enable it in System Settings → General → Login Items & Extensions.
  EOS
end
