cask 'applejuice-gui' do
  version '0.81.0'
  sha256 '4b14d7e5a07033afadbe3bd6d9ba65961331b1e77a43d9a2d0f8fb902cd5216e'
  url "https://github.com/appleJuiceNET/gui-java/releases/download/#{version}/AJCoreGUI.macOS.zip"
  name 'AJCoreGUI'
  homepage 'https://applejuicenet.de'

  auto_updates true

  app 'AJCoreGUI.app'
end
