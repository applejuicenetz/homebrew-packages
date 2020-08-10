cask 'applejuice-gui' do
  version '0.82.1'
  sha256 'ed6556ab5b18df79f738f33a2c3e2ea672b627568588ddd3340f96ac37811535'
  url "https://github.com/appleJuiceNET/gui-java/releases/download/#{version}/AJCoreGUI.macOS.zip"
  name 'AJCoreGUI'
  homepage 'https://applejuicenet.de'

  auto_updates true

  app 'AJCoreGUI.app'
end
