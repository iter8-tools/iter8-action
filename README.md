# iter8-action

## :zap: Iter8: Kubernetes Release Optimizer

> - Safely rollout apps
> - Maximize business value
> - Use with any app/serverless/ML framework
> - Simplify CI/CD/GitOps
> - Get started in seconds

<p align='center'>
<img alt-text="Iter8 experiment" src="https://iter8-tools.github.io/docs/0.9/images/iter8-intro-dark.png" width="70%" />
</p>

## :rocket: Getting started

Configure Iter8 experiment with Helm values file and run the experiment:

``` yaml
    - run: |
        cat << EOF > experiment-config.yaml
          url: https://httpbin.org/get
          SLOs:
            http/error-rate: 0
            http/mean-latency: 100
        EOF
    - uses: iter8-tools/iter8-action@v0.9
      with:
        chart: load-test-http
        valuesFile: experiment-config.yaml
```

Experiment configuration depends on the definition of the experiment chart. Default charts are defined [here](https://github.com/iter8-tools/hub/tree/main/charts).
For more information about Iter8, see the [Iter8 documentation](https://iter8.tools/0.9).

## Action Inputs

| Input Name | Description | Default |
| ---------- | ----------- | ------- |
| `chart` | Name of the experiment chart. Required. | None |
| `chartRepo` | URL of experiment chart repo. | `https://iter8-tools.github.io/hub` |
| `chartVersion` | Version constraint for the chart | None |
| `valuesFile` | Path to configuration values file. | None |
| `validateSLOs` | Validate any specified SLOs. | `true` |
| `logLevel` | Logging level; valid values are `trace`, `debug`, `info`, `warning`, `error`, `fatal`, `panic` | `info` |

## :dart: Usage examples
1.  [Load test, benchmark and validate HTTP services with SLOs](https://iter8.tools/0.9/tutorials/load-test-http/usage/).
2.  [Load test, benchmark and validate gRPC services with SLOs](https://iter8.tools/0.9/tutorials/load-test-grpc/usage/).
3.  Load test, benchmark and validate Knative services with SLOs: [HTTP](https://iter8.tools/0.9/tutorials/integrations/knative/load-test-http/) and [gRPC](https://iter8.tools/0.9/tutorials/integrations/knative/load-test-grpc/).

### Documentation
Iter8 documentation is available at https://iter8.tools.

## :wrench: Developing Iter8
We welcome PRs!

See [here](CONTRIBUTING.md) for information about ways to contribute, Iter8 community meetings, finding an issue, asking for help, pull-request lifecycle, and more.

## :hibiscus: Credits
Iter8 is primarily written in `Go` and builds on a few awesome open source projects including:

- [Helm](https://helm.sh)
- [ghz](https://ghz.sh)
- [Fortio](https://github.com/fortio/fortio)
- [plotly.js](https://github.com/plotly/plotly.js)
