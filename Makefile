
default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Ex:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make build'
	@echo
.PHONY: help




build:
	@./build.sh
.PHONY: build
