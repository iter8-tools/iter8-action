# iter8-action

[![Iter8 release](https://img.shields.io/github/v/release/iter8-tools/iter8?sort=semver)](https://github.com/iter8-tools/iter8-action/releases)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/iter8-tools/iter8-action/tests?label=tests)

## :rocket: Getting started

Configure experiment with Helm values file and run the experiment:

``` yaml
    - run: |
        cat << EOF > expConfig.yaml
          url: https://httpbin.org/get
          SLOs:
            http/error-rate: 0
            http/mean-latency: 100
        EOF
    - uses: iter8-tools/iter8-action@v0.9
      with:
        chart: load-test-http
        valuesFile: expConfig.yaml
```

For more information, see [Iter8 documentation](https://iter8.tools/0.9).

## Action Inputs

| Input Name | Description | Default |
| ---------- | ----------- | ------- |
| `chart` | Name of the experiment chart. Required. | None |
| `chartRepo` | URL of experiment chart repo. | `https://iter8-tools.github.io/hub` |
| `valuesFile` | Path to configuration values file. | None |
| `validateSLOs` | Validate any specified SLOs. | `true` |
| `chartVersion` | Version constraint for the chart | None |
| `logLevel` | Logging level; valid values are `trace`, `debug`, `info`, `warning`, `error`, `fatal`, `panic` | `info` |
