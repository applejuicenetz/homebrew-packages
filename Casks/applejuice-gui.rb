cask 'applejuice-gui' do
  version '0.83.2'
  sha256 '2d92c4b778909874723f58936abea24d2c593dba84685c45024c2b741616169f'
  url "https://github.com/applejuicenetz/gui-java/releases/download/#{version}/AJCoreGUI.macOS.zip"
  name 'AJCoreGUI'
  homepage 'https://applejuicenet.de'

  auto_updates true

  app 'AJCoreGUI.app'
end
