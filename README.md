# truesource-demo-edge-gateway

Demo edge gateway for [TrueSource Viewer](https://github.com/nkuhn-vmw/truesource-viewer-hub-edition).

**Intentionally vulnerable demo. Do not deploy it, do not install from it.** It contains only
manifests and lock files, written by hand: the lock files have no integrity hashes, and the
versions named below are pinned on purpose so that the viewer has something to find.

A Go API gateway in front of the other demo services.

| File | Pins | What the viewer should report |
|---|---|---|
| `go.mod` | `golang.org/x/net` v0.7.0, `google.golang.org/grpc` v1.56.2, `gin` v1.7.0, an old `x/crypto` | Known vulnerabilities, but Go is not a TrueSource ecosystem: the viewer lists these as not in TrueSource |
| `Dockerfile` | `golang:1.19`, `alpine:3.14` | Go 1.19 and Alpine 3.14 are past their end of life |
| `compose.yaml` | `nginx:1.21.6`, `redis:5.0` | Both release lines are past their end of life |
