# LAB5-STARTER KIT & AUTOMATION

### OBJECTIVE-  Build a starter project environment automatically.
`starter_kit.sh`
## ✍🏻 Code-

```bash
#!/bin/bash
# ==========================================================
# Starter Kit Setup Script
# Run as: bash starter_kit.sh
# ==========================================================

set -e  # Exit if any command fails

# === Create folder structure ===
mkdir -p project/{scripts,docs,data}

# === Add placeholder README.md in each folder ===
for dir in project project/scripts project/docs project/data
do
    echo "# README for $(basename $dir)" > "$dir/README.md"
done

# === Final message ===
echo "Starter Kit Ready!"
```

## Example run screenshot

![alttext](<./Screenshot 2025-09-10 at 1.34.05 PM.png>)

![alttext](<./Screenshot 2025-09-10 at 1.33.48 PM.png>)

## Purpose
The **purpose** of `starter_kit.sh` is to quickly set up a basic project structure so you don’t have to create folders and placeholder files manually each time.

Specifically, it:

* Creates a project/ folder with standard subfolders:

* `scripts/` → for shell scripts, Python scripts, or other code.

* `docs/` → for documentation.

* `data/` → for datasets, CSVs, or related files.

* Adds a `README.md` in each folder as a placeholder (so the folders aren’t empty and so you can later add descriptions).

* Prints `Starter Kit Ready!` to confirm everything is set up.

👉 In short: it gives you a ready-to-use skeleton project — useful for assignments, coding projects, or any new work where you want a consistent structure.

## Extra Questions
### 1️⃣ What does mkdir -p do?
* `mkdir -p` is a Linux/Unix command option for mkdir (make directory).

* Without `-p` → mkdir folder/subfolder will fail if folder/ doesn’t already exist.

* With `-p` → it creates the whole path at once. If any parent folders don’t exist, they’ll be created automatically.

Example:
```bash
mkdir project/scripts
```

❌ Fails if project/ does not exist.
```bash
mkdir -p project/scripts
```

**✅ Works** — it creates project/ first (if missing), then scripts/ inside it.

**Also:**

If the folder already exists, -p prevents an error (it just does nothing)

### 2️⃣ Why is automation useful in DevOps?

* 🔹 1. Consistency and Reliability

Manual steps (like deploying code, configuring servers, or running tests) can be error-prone.

Automation ensures every step runs the same way every time → fewer mistakes.

* 🔹 2. Speed and Efficiency

Automated pipelines can build, test, and deploy applications in minutes (or seconds).

Saves time compared to manual processes, especially for frequent releases.

* 🔹 3. Continuous Integration & Continuous Deployment (CI/CD)

Automation enables CI/CD pipelines, where code changes are automatically tested and deployed.

This allows developers to release updates frequently and safely.

* 🔹 4. Scalability

If you need to deploy across 10 or 100 servers, automation tools (like Ansible, Terraform, Kubernetes) can handle it.

Doing this manually would be slow and nearly impossible without errors.

* 🔹 5. Improved Collaboration

In DevOps, Dev and Ops teams share responsibility.

Automation provides a single source of truth (scripts, pipelines, configs) that both teams can rely on.

---

