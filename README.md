# Local Kubernetes setup using Kind

Start a local kubernetes cluster with traefik ingress and HTTPS _in seconds_! 🚀

## Prerequisites

- [Docker](https://docs.docker.com/install/)
- [Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [Kind](https://kind.sigs.k8s.io/docs/user/quick-start/#installation)
- [Helm](https://helm.sh/docs/intro/install/)

## Getting started

```bash
# start local cluster with ingress, HTTPS and a demo app
make up

# stop
make down

make help
```

## Notes

You can also use `.localhost` as a local DNS name.
