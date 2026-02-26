#!/usr/bin/env bash

if ! docker build -t otelcol .; then
    echo "error: docker build"
    exit 1
fi

if ! docker run --rm -p 4317:4317 -p 4318:4318 otelcol; then
    echo "error: docker run"
    exit 1
fi
