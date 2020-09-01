cask 'applejuice-core' do
  version '_VERSION_'
  sha256 '_SHASUM_'
  url "https://github.com/appleJuiceNET/core/releases/download/#{version}/AJCore.macOS.zip"
  name 'AjCore'
  homepage 'https://applejuicenet.de'
  license 'proprietary'
  depends_on arch: :intel

  auto_updates true

  app 'AJCore.app'
end
