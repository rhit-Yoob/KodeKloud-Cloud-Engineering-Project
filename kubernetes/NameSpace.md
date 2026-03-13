# Kubernetes Namespace & Pod Deployment — `dev`

## Task Overview
Create a namespace named `dev` and deploy a pod within it using the `nginx:latest` image.

### Requirements
| Field | Value |
|---|---|
| Namespace | `dev` |
| Pod Name | `dev-nginx-pod` |
| Image | `nginx:latest` |
| kubectl | Pre-configured on jump-host |

---

## YAML Manifest

![yaml file](NameSpace.yaml)    
Create a file called `namespace.yaml`:

```yaml
apiVersion: v1
kind: Namespace
metadata:
  name: dev
```

### YAML Breakdown
| Line | Description |
|---|---|
| `apiVersion: v1` | Core API group — Namespaces use `v1` |
| `kind: Namespace` | Resource type to create |
| `metadata:` | Info about the namespace |
| `name: dev` | Name of the namespace |

---

## Steps

### 1. Create the Namespace YAML File
```bash
vim namespace.yaml
```
- Press `i` to enter insert mode
- Type the YAML manifest above
- Press `Esc` then `:wq` to save and quit

### 2. Apply the Namespace
```bash
kubectl create -f namespace.yaml
```
Expected output:
```
namespace/dev created
```

### 3. Verify the Namespace
```bash
kubectl get namespaces --show-labels
```
Expected output:
```
NAME              STATUS   AGE   LABELS
dev               Active   21s   kubernetes.io/metadata.name=dev
```

### 4. Deploy the Pod into the Namespace
```bash
kubectl run dev-nginx-pod --image=nginx:latest -n dev
```
Expected output:
```
pod/dev-nginx-pod created
```

### 5. Verify the Pod
```bash
kubectl get pod -n dev
```
Expected output:
```
NAME            READY   STATUS    RESTARTS   AGE
dev-nginx-pod   1/1     Running   0          17s
```

---

## How It All Connects
```
namespace.yaml
  └── creates namespace: dev
        └── pod: dev-nginx-pod
              └── image: nginx:latest
```

---

## Common Errors & Fixes

### Error: `namespaces "dev" not found`
**Cause:** Namespace does not exist yet
```bash
# Create namespace first
kubectl create -f namespace.yaml

# Then create the pod
kubectl run dev-nginx-pod --image=nginx:latest -n dev
```

---

## Useful kubectl Commands
```bash
# List all namespaces
kubectl get namespaces

# List namespaces with labels
kubectl get namespaces --show-labels

# List all pods in dev namespace
kubectl get pods -n dev

# List pods across all namespaces
kubectl get pods --all-namespaces

# Describe the pod
kubectl describe pod dev-nginx-pod -n dev

# Delete the pod
kubectl delete pod dev-nginx-pod -n dev

# Delete the namespace (deletes everything inside it)
kubectl delete namespace dev
```

---

## Namespace vs Default Namespace

| | Default Namespace | dev Namespace |
|---|---|---|
| No `-n` flag needed | ✅ Yes | ❌ No |
| Isolated resources | ❌ No | ✅ Yes |
| Access with flag | `kubectl get pods` | `kubectl get pods -n dev` |

---

## Key Rules to Remember
| Rule | Detail |
|---|---|
| Create namespace first | Pod creation fails if namespace doesn't exist |
| Always specify image tag | `nginx:latest` not just `nginx` |
| Use `-n dev` not `-n=dev` | No equals sign in namespace flag |
| `--replicas` is for Deployments | Not supported on pods |
| Namespace uses `v1` | Not `apps/v1` like Deployments |

---

## Resources
- [Kubernetes Namespaces Documentation](https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/)
- [kubectl run Reference](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#run)
- [KodeKloud Practice Labs](https://kodekloud.com)
