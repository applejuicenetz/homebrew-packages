cask 'applejuice-gui' do
  version '0.83.1'
  sha256 'aea68c3bff47cc4bbbf857614d900433cb9e4466783870419ff338a17e302921'
  url "https://github.com/appleJuiceNET/gui-java/releases/download/#{version}/AJCoreGUI.macOS.zip"
  name 'AJCoreGUI'
  homepage 'https://applejuicenet.de'

  auto_updates true

  app 'AJCoreGUI.app'
end
