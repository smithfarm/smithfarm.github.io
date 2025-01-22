# obs-docu adoc PoC

This is a proof-of-concept (PoC) showing how the existing OBS guides could be
converted to asciidoc.

## How to see the source code

https://github.com/smithfarm/smithfarm.github.io/tree/main/asciidoc

## How to see the asciidoc as rendered by GitHub

https://github.com/smithfarm/smithfarm.github.io/blob/main/asciidoc/obs-book/obs.adoc

## How to see the "final product" rendered to GitHub Pages

https://smithfarm.github.io

## How to test/build locally

If you are contributing to our documentation, you can locally render the content using one of these methods. 

With docker/podman (allow lots of time for downloading container images):

```bash
podman run -it --rm -v $PWD/:/docs/ registry.opensuse.org/home/atgracey/cnbp/containers/builder:latest bash -c 'cd /docs/asciidoc; daps -d DC-obs html'

cd asciidoc/build/obs/html/obs; python -m http.server
```
