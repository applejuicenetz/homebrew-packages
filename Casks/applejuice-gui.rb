cask 'applejuice-gui' do
  version '0.82.0'
  sha256 'c31181682f6331f516f61991f71c9610264c96f1fda495c1c925f8ae88f571e9'
  url "https://github.com/appleJuiceNET/gui-java/releases/download/#{version}/AJCoreGUI.macOS.zip"
  name 'AJCoreGUI'
  homepage 'https://applejuicenet.de'

  auto_updates true

  app 'AJCoreGUI.app'
end
