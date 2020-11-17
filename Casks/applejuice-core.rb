cask 'applejuice-core' do
  version '0.31.149.111'
  sha256 '8f8d152bb2e23da22361d395a2515291ffed7de8a935bea18431aaa171246ceb'
  url "https://github.com/applejuicenetz/core/releases/download/#{version}/AJCore.macOS.zip"
  name 'AjCore'
  homepage 'https://applejuicenet.de'

  auto_updates true

  app 'AJCore.app'
end
