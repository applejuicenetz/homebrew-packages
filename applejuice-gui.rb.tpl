cask 'applejuice-gui' do
  version '_VERSION_'
  sha256 '_SHASUM_'
  url "https://github.com/applejuicenetz/gui-java/releases/download/#{version}/AJCoreGUI.macOS.zip"
  name 'AJCoreGUI'
  homepage 'https://applejuicenet.cc'

  auto_updates true

  app 'AJCoreGUI.app'
end
