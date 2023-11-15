#!/bin/sh
FILES_DIR=$( pwd )
docker run --platform linux/amd64 --rm -v "$FILES_DIR":/data koenyskout/proverif:default proverif $@