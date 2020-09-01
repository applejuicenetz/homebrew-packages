cask 'applejuice-gui' do
  version '_VERSION_'
  sha256 '_SHASUM_'
  url "https://github.com/appleJuiceNET/gui-java/releases/download/#{version}/AJCoreGUI.macOS.zip"
  name 'AJCoreGUI'
  homepage 'https://applejuicenet.de'
  license 'GPL-2.0-only'

  auto_updates true

  app 'AJCoreGUI.app'
end
