image:
	docker build -t emeraldci/environment .
dev:
	cp $(GOPATH)/bin/test-runner ./test-runner
	docker build -f Dockerfile.dev -t emeraldci/environment .
