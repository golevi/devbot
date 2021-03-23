GIT_COMMIT := $(shell git rev-list -1 HEAD)

build:
	go build -o release/devctl -ldflags "-X main.version=${GIT_COMMIT}" cmd/devctl/main.go