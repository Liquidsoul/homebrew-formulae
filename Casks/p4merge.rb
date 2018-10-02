cask 'p4merge' do
  version '18.3-1706936'
  sha256 'ff1d378906e22b13d7227fc4b3def17b1ebe957025cefe65e0f2737d1e57a493'

  url "http://cdist2.perforce.com/perforce/r#{version.major_minor}/bin.macosx1013x86_64/P4V.dmg"
  appcast "http://filehost.perforce.com/perforce/r#{version.major_minor}/bin.macosx1013x86_64/SHA256SUMS"
  name 'Perforce P4Merge'
  homepage 'https://www.perforce.com/products/helix-apps/merge-diff-tool-p4merge'

  app 'p4merge.app'

  zap trash: [
               '~/Library/Preferences/com.perforce.p4merge',
               '~/Library/Preferences/com.perforce.p4merge.plist',
               '~/Library/Saved Application State/com.perforce.p4merge.savedState',
             ]
end
