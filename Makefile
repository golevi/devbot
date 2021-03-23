VERSION := $(shell git describe --tags --abbrev=0)
GIT_COMMIT := $(shell git rev-list -1 HEAD)
GO_VERSION := $(shell go version)
DATE := $(shell date)

build:
	go build -o release/devctl -ldflags "-X 'main.version=${VERSION}' -X 'main.commit=${GIT_COMMIT}' -X 'main.goVersion=${GO_VERSION}' -X 'main.date=${DATE}'" cmd/devctl/main.go
