cask 'emacs-mac-spacemacs-icon' do
  version 'emacs-25.3-mac-6.8'

  sha256 '1edb21d9b3cc3757c075ca7c0a1a6d4a677a58d2303d4c85b66cbbf80e61c76a'

  url 'https://s3.amazonaws.com/emacs-mac-port/emacs-25.3-mac-6.8-spacemacs-icon.zip'
  name 'Emacs-mac with spacemacs icon'
  homepage 'https://www.gnu.org/software/emacs/'

  conflicts_with formula: ['emacs', 'ctags']

  app 'Emacs.app'
  binary "#{appdir}/Emacs.app/Contents/MacOS/Emacs", target: 'emacs'
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/ctags"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/ebrowse"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/emacsclient"
  binary "#{appdir}/Emacs.app/Contents/MacOS/bin/etags"

  zap trash: [
        '~/Library/Caches/org.gnu.Emacs',
        '~/Library/Preferences/org.gnu.Emacs.plist',
        '~/Library/Saved Application State/org.gnu.Emacs.savedState',
      ]
end
