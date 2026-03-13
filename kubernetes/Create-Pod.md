# Kubernetes Pod Creation — `pod-httpd`

## Task Overview
Create a pod on a Kubernetes cluster using the `httpd` image with specific labels and container naming.

### Requirements
| Field | Value |
|---|---|
| Pod Name | `pod-httpd` |
| Image | `httpd:latest` |
| App Label | `httpd_app` |
| Container Name | `httpd-container` |

---

## Prerequisites
- Access to a jump-host with `kubectl` configured
- Kubernetes cluster running and accessible

---

## YAML Manifest
![yaml File](Create.Pod.yaml)    
Create a file called `pod.yaml`:

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: pod-httpd
  labels:
    app: httpd_app
spec:
  containers:
  - name: httpd-container
    image: httpd:latest
```

### Indentation Reference
```
apiVersion: v1          → 0 spaces (root)
kind: Pod               → 0 spaces (root)
metadata:               → 0 spaces (root)
  name: pod-httpd       → 2 spaces
  labels:               → 2 spaces
    app: httpd_app      → 4 spaces
spec:                   → 0 spaces (root)
  containers:           → 2 spaces
  - name: httpd-container  → 2 spaces + dash + space
    image: httpd:latest    → 4 spaces
```

---

## Steps

### 1. Create the YAML File
```bash
vim pod.yaml
```
- Press `i` to enter insert mode
- Type the YAML manifest above
- Press `Esc` then `:wq` to save and quit

### 2. Apply the Manifest
```bash
kubectl apply -f pod.yaml
```
Expected output:
```
pod/pod-httpd created
``

---

## Common Errors & Fixes

### Error: `mapping values are not allowed in this context`
**Cause:** Incorrect YAML indentation or tabs used instead of spaces.

**Fix:**
```bash
# Check for tab characters (^I = tab)
cat -A pod.yaml

# Delete and rewrite the file
rm pod.yaml
vim pod.yaml
```

---

### Error: `spec.containers: Forbidden: pod updates may not add or remove containers`
**Cause:** Pod already exists from a previous failed attempt. Kubernetes pods are immutable once created.

**Fix:**
```bash
# Delete the existing pod
kubectl delete pod pod-httpd

# Verify it's deleted
kubectl get pod pod-httpd

# Reapply
kubectl apply -f pod.yaml
```

---

### Error: `-name` parsed as map key instead of list item
**Cause:** Missing space after the dash `-` in the containers list.

```yaml
# ❌ Wrong
  -name: httpd-container

# ✅ Correct
  - name: httpd-container
```

---

## Useful kubectl Commands
```bash
# View pod details
kubectl describe pod pod-httpd

# View pod logs
kubectl logs pod-httpd

# Delete pod
kubectl delete pod pod-httpd

# List all pods
kubectl get pods

# Show pod YAML
kubectl get pod pod-httpd -o yaml
```

---

## Pod Status Reference
| Status | Meaning |
|---|---|
| `Pending` | Pod is being scheduled |
| `ContainerCreating` | Image is being pulled |
| `Running` | ✅ Pod is live |
| `ErrImagePull` | Image name is wrong |
| `CrashLoopBackOff` | Container keeps crashing |

---

## Resources
- [Kubernetes Pods Documentation](https://kubernetes.io/docs/concepts/workloads/pods/)
- [kubectl apply Reference](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#apply)
- [YAML Syntax Guide](https://yaml.org/spec/1.2/spec.html)
- [KodeKloud Practice Labs](https://kodekloud.com)
