cask 'applejuice-gui' do
  version '0.83.4'
  sha256 '845f11c9cc413e31d0e74e8c72894d89e1bfec87871b5f41819d095da349a223'
  url "https://github.com/applejuicenetz/gui-java/releases/download/#{version}/AJCoreGUI.macOS.zip"
  name 'AJCoreGUI'
  homepage 'https://applejuicenet.cc'

  auto_updates true

  app 'AJCoreGUI.app'
end
