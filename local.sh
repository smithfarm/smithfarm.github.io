#!/bin/bash
set -e
# from the top-level directory of the git repo
podman run -it --rm -v $PWD/:/docs/ \
    registry.opensuse.org/home/atgracey/cnbp/containers/builder:latest \
    bash -c 'cd /docs/adoc; daps -v -d DC-obs html'
pushd adoc/build/obs/html/obs
python3 -m http.server
