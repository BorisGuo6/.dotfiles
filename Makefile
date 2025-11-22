CONFIG=install.conf.yaml

.PHONY: install
install:
	@git submodule update --init --recursive
	@./install
