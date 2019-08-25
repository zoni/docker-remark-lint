# docker-remark-lint

Docker image for remark-lint

## Usage

Copy or mount a directory containing markdown files you want to check onto `/project`.
For example:

```sh
docker run --rm -it -v "$(pwd):/project:ro" quay.io/zoni/remark-lint:latest /project --frail
```
