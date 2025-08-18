## Install Method

### Options

- Helm chart bundle
- separate charts
- managed service

### Choice

- Helm chart bundle
  - This is a learning project, and I need to lean more helm.

## Network Exposure

### Options

- Internal-only via ClusterIp + `kubectl port-forward`
- Internal LoadBalancer
- Private Ingress

### Choice

- Internal-only via ClusterIp + `kubectl port-forward`
  - I'm unclear on this and so want to understand it better

## Persistence & Retention

### Options

- Ephemeral (emptyDir)
- PVC (Disk)
- Retention (7d, 15d)

### Choice

- emptyDir
  - Easy for now

- Least retention
  - Cost savings

## AKS control-plane scraping

### Options

- AKS managed etcd/scheduler/controller-manager

### Choice

- Disable etcd, controller-manager

## Discovery of targets

### Options

- Prometheus should discover all `ServiceMonitor`/`PodMOnitor` by default
- Prometheus should discover only ones with a specific label

### Choice

- Prometheus should discover only ones with a specific label
  - Seems more difficult

## Auth for Grafana

### Options

- Temporary admin password
- Storing admin secrets
- SSO later

### Choice

- Storage admin secrets
  - Feels more 'Real-world'

## Scrape Cadence

### Options

- Pick a default scrape interval

### Choice

- 30s
  - We don't need too many logs for now

## Dashboards provisioning

### Options

- Manual (Import JSON)
- auto-provision (files mounted/Helm values)

### Choice

- Manual (Import JSON)
   - Learn what is needed to do the work.

## Alerting

### Options

- Choose one latency alert and one error-rate alert

### Choice

- Set metrics and thresholds

## App metrics integration

### Options

- Decide how app exposes `/metrics` and whether you'll use `PodMonitor` or `ServiceMonitor`

### Choice

- Record app's lavel(s) Prometheus should match and the port/path to scrape