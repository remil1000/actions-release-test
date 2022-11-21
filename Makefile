.PHONY: clean build

GOOS?=linux
GOARCH?=$(subst x86_64,amd64,$(shell uname -m))

build: bin
	GOOS=$(GOOS) GOARCH=$(GOARCH) go build -o bin/dummy-$(GOOS)-$(GOARCH)

bin:
	mkdir -p $@

clean:
	rm -rf bin
