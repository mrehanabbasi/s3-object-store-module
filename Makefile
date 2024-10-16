deps:
	go mod tidy
	go mod vendor

lint:
	docker run --rm -v .:/app -w /app golangci/golangci-lint:v1.61.0 golangci-lint run -v --max-same-issues 0 --timeout 480s
