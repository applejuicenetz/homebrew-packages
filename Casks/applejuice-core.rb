cask 'applejuice-core' do
  version '0.31.149.110'
  sha256 '270539fa1d1067860beb6fc3efcfaea1b26587c5972045656915ec0490501705'
  url "https://github.com/appleJuiceNET/core/releases/download/#{version}/AJCore.macOS.zip"
  name 'AjCore'
  homepage 'https://applejuicenet.de'
  depends_on arch: :intel
  depends_on cask: 'adoptopenjdk/openjdk/adoptopenjdk8-jre'

  auto_updates true

  app 'AJCore.app'
end
