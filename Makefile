# Local dev environment with Docker and Kubernetes KIND
# Requirements:
# - Docker
# - Homebrew

.PHONY: up
up: ## Create the local cluster & infrastructure
	kubernetes/bootstrap.sh

.PHONY: down
down: ## Delete the local cluster & infrastructure
	kubernetes/down.sh

.PHONY: help
help:  ## Display this help menu
	@awk 'BEGIN {FS = ":.*##"; printf "\nUsage:\n  make \033[36m<target>\033[0m\n"} /^[a-zA-Z_0-9-]+:.*?##/ { printf "  \033[36m%-20s\033[0m %s\n", $$1, $$2 } /^##@/ { printf "\n\033[1m%s\033[0m\n", substr($$0, 5) } ' $(MAKEFILE_LIST)