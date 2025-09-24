#!/bin/bash

set -ex

# export GO111MODULE=on

cd $SRC_DIR
go build -ldflags "-X main.revision=conda-forge" -v -o $PREFIX/bin/jf
go-licenses save . \
    --ignore "github.com/cyberphone/json-canonicalization" \
    --ignore "github.com/in-toto/attestation" \
    --ignore "github.com/in-toto/in-toto-golang" \
    --ignore "github.com/xi2/xz" \
    --save_path ./library_licenses
