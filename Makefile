PHONY: all
all:
	initialize brew-bundle brew-bundle-mas stow-packages asdf-plugins

PHONY: initialize
initialize:
	@./scripts/initialize.sh

.PHONY: brew-bundle
brew-bundle:
	brew bundle install --verbose --no-lock --file=./packages/brewfiles/.Brewfile
	@terminal-notifier -title 'make brew-bundle' -message 'Finished!'

.PHONY: brew-bundle-mas
brew-bundle-mas:
	brew bundle install --verbose --no-lock --file=./packages/brewfiles/.Brewfile.mas
	@terminal-notifier -title 'make brew-bundle-mas' -message 'Finished!'

.PHONY: stow-packages
stow-packages:
	@echo	"------------Start updating dotfiles symbolic link.------------"
	@./scripts/stow_packages.sh
	@echo "--------------------Finished Successfully.--------------------"

.PHONY: asdf-plugins
asdf-plugins:
	@./scripts/asdf_plugins.sh

