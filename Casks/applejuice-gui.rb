cask 'applejuice-gui' do
  version '0.80.1'
  sha256 '91b6ba68a735159268ff6f8ed8a51e07957abf32045c1e2ef88bac75b2a8267e'
  url "https://github.com/appleJuiceNET/gui-java/releases/download/#{version}/AJCoreGUI.macOS.zip"
  name 'AJCoreGUI'
  homepage 'https://applejuicenet.de'

  auto_updates true

  app 'AJCoreGUI.app'
end
