cask 'applejuice-core' do
  version '0.31.149.112'
  sha256 '777ea56ec1fcec78ba79edca75ea3d71b7990f5ef441c385bc3cdf9f326af7c1'
  url "https://github.com/applejuicenetz/core/releases/download/#{version}/AJCore.macOS.zip"
  name 'AjCore'
  homepage 'https://applejuicenet.cc'
  license 'proprietary'

  auto_updates true

  app 'AJCore.app'
end
