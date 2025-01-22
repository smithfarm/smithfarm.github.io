# OBS docu website

## How to test/build locally

If you are contributing to our documentation, you can locally render the content using one of these methods. 

With docker/podman (allow lots of time for downloading container images):

```bash
podman run -it --rm -v $PWD/:/docs/ registry.opensuse.org/home/atgracey/cnbp/containers/builder:latest bash -c 'cd /docs/asciidoc; daps -d DC-obs html'

cd asciidoc/build/obs/html/obs; python -m http.server
```
