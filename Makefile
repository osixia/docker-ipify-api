NAME = osixia/ipify-api
VERSION = 0.1.0

.PHONY: all build build-nocache test tag_latest release

all: build

binary:
	env NAME=$(NAME)-compile VERSION=$(VERSION) ./compile/compile.sh

build: binary
	docker build -t $(NAME):$(VERSION) --rm image

build-nocache: binary
	docker build -t $(NAME):$(VERSION) --no-cache --rm image

test: binary
	env NAME=$(NAME) VERSION=$(VERSION) bats test/test.bats

tag_latest:
	docker tag $(NAME):$(VERSION) $(NAME):latest

release: build test tag_latest
	@if ! docker images $(NAME) | awk '{ print $$2 }' | grep -q -F $(VERSION); then echo "$(NAME) version $(VERSION) is not yet built. Please run 'make build'"; false; fi
	docker push $(NAME)
	@echo "*** Don't forget to run 'twgit release/hotfix finish' :)"
