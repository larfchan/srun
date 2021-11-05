NAME=sdusrun
TARGET=x86_64-unknown-linux-musl
include scripts/Makefile.release

all: fmt clippy cbuild

cbuild:
	cargo build --target $(TARGET)
	cargo strip

xbuild:
	xargo build --target $(TARGET)

clean:
	cargo clean

deps:
	cargo install cargo-strip xargo cross

fmt:
	cargo fmt --all

c:
	cargo clippy

