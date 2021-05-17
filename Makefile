default:
	@echo "dotfiles"
	@echo ""
	@grep -E '^[a-zA-Z0-9_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

packages: ## Install all packages
	@cat packages | xargs sudo dnf install -y

zsh: ## Install zsh config
	@stow -R zsh

.PHONY: packages zsh
