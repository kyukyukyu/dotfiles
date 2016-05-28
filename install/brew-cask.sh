# Install Caskroom

brew tap caskroom/cask
brew install brew-cask
brew tap caskroom/versions
brew tap caskroom/fonts

# Install packages

apps=(
  clion
  cyberduck
  dash
  dropbox
  evernote
  firefox
  flux
  go2shell
  google-chrome
  google-drive
  haskell-platform
  intellij-idea
  iterm2
  macdown
  onyx
  papers
  pycharm
  virtualbox
  vlc
  webstorm
)
fonts=(
  bm-hanna
  hack
  noto-sans-cjk-kr
  roboto
)
_fonts=()
for f in "${fonts[@]}"; do
    _fonts+=("font-${f}")
done

brew cask install "${apps[@]}"
brew cask install "${_fonts[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package
