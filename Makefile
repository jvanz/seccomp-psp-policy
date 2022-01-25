.PHONY: build
build:
	cargo build --target=wasm32-unknown-unknown --release

.PHONY: fmt
fmt:
	cargo fmt --all --

.PHONY: lint
lint:
	cargo clippy -- -D warnings

.PHONY: test
test: fmt lint
	cargo test

.PHONY: clean
clean:
	cargo clean

.PHONY: e2e-tests
e2e-tests:
	@echo "Dummy target to allow using the reusable github actions to build, test and release policies"
