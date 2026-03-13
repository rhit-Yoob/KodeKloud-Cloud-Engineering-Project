# Kubernetes Deployment — `httpd`

## Task Overview
Create a deployment on a Kubernetes cluster to deploy the `httpd` application using the `httpd:latest` image.

### Requirements
| Field | Value |
|---|---|
| Deployment Name | `httpd` |
| Image | `httpd:latest` |
| kubectl | Pre-configured on jump-host |

---

## YAML Manifest

![yaml File](Deploy-App.yaml)
Create a file called `deployment.yaml`:

```yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: httpd
spec:
  replicas: 1
  selector:
    matchLabels:
      app: httpd
  template:
    metadata:
      labels:
        app: httpd
    spec:
      containers:
      - name: httpd
        image: httpd:latest
```

---

## YAML Breakdown

| Field | Value | Description |
|---|---|---|
| `apiVersion` | `apps/v1` | API group for Deployments |
| `kind` | `Deployment` | Resource type |
| `metadata.name` | `httpd` | Name of the deployment |
| `replicas` | `1` | Number of pods to run |
| `matchLabels` | `app: httpd` | Links deployment to its pods |
| `template` | — | Blueprint for each pod |
| `containers.name` | `httpd` | Container name |
| `containers.image` | `httpd:latest` | Image to pull and run |

### Indentation Reference
```
apiVersion: apps/v1         → 0 spaces
kind: Deployment            → 0 spaces
metadata:                   → 0 spaces
  name: httpd               → 2 spaces
spec:                       → 0 spaces
  replicas: 1               → 2 spaces
  selector:                 → 2 spaces
    matchLabels:            → 4 spaces
      app: httpd            → 6 spaces
  template:                 → 2 spaces
    metadata:               → 4 spaces
      labels:               → 6 spaces
        app: httpd          → 8 spaces
    spec:                   → 4 spaces
      containers:           → 6 spaces
      - name: httpd         → 6 spaces + dash + space
        image: httpd:latest → 8 spaces
```

---

## Steps

### 1.
```bash
vim deployment.yaml
```
- Press `i` to enter insert mode
- Type the YAML manifest
- Press `Esc` then `:wq` to save and quit

### 2. Apply the Manifest
```bash
kubectl apply -f deployment.yaml
```
Expected output:
```
deployment.apps/httpd created
```

---

## Common Errors & Fixes

### Error: `unknown field "spec.selector.matchLabel"`
**Cause:** `matchLabels` is lowercase — YAML is case sensitive
```yaml
# ❌ Wrong
matchlabel:
  app: httpd

# ✅ Correct
matchLabels:
  app: httpd
```
---

### Error: `unknown field "spec.containers"`
**Cause:** `containers` is under the top level `spec` instead of `template.spec`
```yaml
# ❌ Wrong
spec:
  containers:        # wrong level
  template:
    spec:

# ✅ Correct
spec:
  template:
    spec:
      containers:    # correct level
```
**Rule to remember:**
```
spec (deployment level)
  └── template
        └── spec (pod level)
              └── containers  ← always lives here
```

---

## YAML Golden Rules
| Rule | Detail |
|---|---|
| Never use Tab | Always use spacebar |
| 2 spaces per level | Consistent throughout file |
| Space after colon | `key: value` not `key:value` |
| Space after dash | `- name` not `-name` |
| Case sensitive | `matchLabels` not `matchlabel` |
| `apps/v1` not `app/v1` | Don't forget the `s` |
| `containers` under `template.spec` | Never under top level `spec` |

---

## Useful kubectl Commands
```bash
# View deployment details
kubectl describe deployment httpd

# View pods created by deployment
kubectl get pods

# View deployment YAML
kubectl get deployment httpd -o yaml

# Scale deployment
kubectl scale deployment httpd --replicas=3

# Delete deployment
kubectl delete deployment httpd

# Check rollout status
kubectl rollout status deployment httpd
```

---

## Pod vs Deployment Comparison
| Field | Pod | Deployment |
|---|---|---|
| `apiVersion` | `v1` | `apps/v1` |
| `kind` | `Pod` | `Deployment` |
| `replicas` | ❌ Not available | ✅ Controls pod count |
| `selector` | ❌ Not needed | ✅ Required |
| `template` | ❌ Not needed | ✅ Required |
| Self-healing | ❌ No | ✅ Yes |

---

## Resources
- [Kubernetes Deployments Documentation](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/)
- [kubectl apply Reference](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#apply)
- [Kubernetes API Groups](https://kubernetes.io/docs/concepts/overview/kubernetes-api/#api-groups-and-versioning)
- [KodeKloud Practice Labs](https://kodekloud.com)
