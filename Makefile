.DEFAULT_GOAL := serve

PORT := 8080

# TODO: After side project envchecer completion
#CHECK_PREREQUISITES := $(shell ./check-prerequisites)
#ifneq ($(CHECK_PREREQUISITES),)
#$(error $(CHECK_PREREQUISITES))
#endif

.PHONY: serve build test report docker
serve: node_modules open-dev-webapp spin-up-development-server ## run the app locally

#test: node_modules test-lint unit e2e ## bleble

#report: node_modules unit-coverage open-coverage-report ## bleble

build: dist ## create production build

docker: ## create Docker image
	docker build -t eank-planner-front -f ./deploy/Dockerfile .

.PHONY: update test-lint unit e2e
update: ## update dependencies and write changes to lockfile
	@echo "Not implemented"
#test-lint: ## bleble
#	yarn run lint
#unit: ## bleble
#	yarn run test:unit
#e2e: ## bleble
#	# TODO: Fix e2e - than enable this (any additional prerequisites?)
#	#yarn run test:e2e

.PHONY: spin-up-development-server open-coverage-report open-dev-webapp unit-coverage
spin-up-development-server:
	yarn run serve
open-dev-webapp:
	(sleep 5; xdg-open localhost:$(PORT)) &
#open-coverage-report:
#	xdg-open coverage/lcov-report/index.html
#unit-coverage:
#	yarn run coverage
#dist: node_modules src babel.config.js postcss.config.js public tsconfig.json
dist: node_modules src babel.config.js postcss.config.js public
	yarn run build
node_modules: yarn.lock
	yarn install --frozen-lockfile
	# at this point yarn.lock is newer than node_modules,
	# because of how yarn accesses those files.

	@touch node_modules # prevent unnecessary rebuilds

.PHONY: help
help: ## print this message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
