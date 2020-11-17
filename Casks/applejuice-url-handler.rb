cask 'applejuice-url-handler' do
  version '0.83.4'
  sha256 '754d6f48c07f987a779bf00b41febb110f17a3e800308590ee64abe7a750d994'
  url "https://github.com/applejuicenetz/gui-java/releases/download/#{version}/AjUrlHandler.macOS.zip"
  name 'AjUrlHandler'
  homepage 'https://applejuicenet.cc'

  auto_updates true

  app 'AjUrlHandler.app'
end
