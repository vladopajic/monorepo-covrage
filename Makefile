GO ?= go
GOBIN ?= $$($(GO) env GOPATH)/bin
TEST_COVERAGE ?= $(GOBIN)/go-test-coverage

.PHONY: test
test: 
	go test ./proja -coverprofile=./cover.proja -coverpkg=./...
	go test ./projb -coverprofile=./cover.projb -coverpkg=./...

.PHONY: check
check: test
	go install github.com/vladopajic/go-test-coverage/v2@d76e2965dcc0c9b37892e85e784c2c8140155816
	$(TEST_COVERAGE) -config=./proja/.testcoverage.yml -source-dir=./proja || true
	$(TEST_COVERAGE) -config=./projb/.testcoverage.yml -source-dir=./projb || true