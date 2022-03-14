# Iter8 GitHub Action

The Iter8 GitHub Action can be used to load test, benchmark, and validate HTTP and gRPC services with service-level objectives (SLOs). 

## How it works
This action is based on the [Iter8 Kubernetes release optimizer](https://iter8.tools). Iter8 enables *experiments* that can be run by specifying the name of the experiment chart, along with configuration values for the chart. Use the [`load-test-http`](https://iter8.tools/0.9/tutorials/load-test-http/basicusage/) and [`load-test-grpc`](https://iter8.tools/0.9/tutorials/load-test-grpc/basicusage/) charts within this action to test HTTP and gRPC services respectively.

### Example: Load test, benchmark and validate HTTP
``` yaml
- uses: iter8-tools/iter8-action@v1
  with:
    chart: load-test-http
    valuesFile: experiment-config.yaml
```

A sample `experiment-config.yaml` is shown below. 
```yaml
url: https://httpbin.org/get
```

Details of the configuration parameters that can be set in this experiment is [here](https://iter8.tools/0.9/tutorials/load-test-http/basicusage/).

### Example: Load test, benchmark and validate gRPC
``` yaml
- uses: iter8-tools/iter8-action@v1
  with:
    chart: load-test-grpc
    valuesFile: experiment-config.yaml
```

A sample `experiment-config.yaml` is shown below. 
```yaml
# An earlier step in the workflow is assumed to have started the gRPC service
host: 127.0.0.1:50051
call: helloworld.Greeter.SayHello
protoURL: https://raw.githubusercontent.com/grpc/grpc-go/master/examples/helloworld/helloworld/helloworld.proto
```

Details of the configuration parameters that can be set in this experiment is [here](https://iter8.tools/0.9/tutorials/load-test-grpc/basicusage/).


## Action Inputs

| Input Name | Description | Default |
| ---------- | ----------- | ------- |
| `chart` | Name of the experiment chart. Required. | None |
| `valuesFile` | Path to configuration values file. Required. | None |
| `validateSLOs` | Validate any specified SLOs. | `true` |
| `logLevel` | Logging level; valid values are `trace`, `debug`, `info`, `warning`, `error`, `fatal`, `panic` | `info` |

## Issues
Issues for this action is managed as part of [Iter8 repo issues](https://github.com/iter8-tools/iter8).

## Contributing
We welcome PRs!

See [here](CONTRIBUTING.md) for information about ways to contribute, Iter8 community meetings, finding an issue, asking for help, pull-request lifecycle, and more.
