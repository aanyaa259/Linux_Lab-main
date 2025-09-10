# LAB5-STARTER KIT & AUTOMATION
`starter_kit.sh`
## Code-

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
### 1️⃣What does mkdir -p do?
`mkdir -p` is a Linux/Unix command option for mkdir (make directory).

Without `-p` → mkdir folder/subfolder will fail if folder/ doesn’t already exist.

With `-p` → it creates the whole path at once. If any parent folders don’t exist, they’ll be created automatically.

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

If the folder already exists, -p prevents an error (it just does nothing


