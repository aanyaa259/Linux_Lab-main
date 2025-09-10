# LAB-4 FILE & BACKUP AUTOMATION
## Script `backup.sh`
```bash
#!/bin/bash
# ========================================
# backup.sh - Backup all .txt files
# ========================================

# Create backup directory if not exists
mkdir -p backup

# Get current timestamp
timestamp=$(date +"%Y%m%d_%H%M%S")

# Find all .txt files in current directory
for file in *.txt; do
  # Check if there are any .txt files
  [ -e "$file" ] || { echo "No .txt files found."; exit 0; }

  # Extract filename without path
  filename=$(basename "$file")

  # Copy file to backup/ with timestamp
  cp "$file" "backup/${filename%.txt}_$timestamp.txt"
  echo "Backed up: $file → backup/${filename%.txt}_$timestamp.txt"
done

echo "✅ Backup completed."

```

## 🔹 How it works

`mkdir -p backup` → makes sure the backup/ folder exists.

`timestamp=$(date +"%Y%m%d_%H%M%S")` → generates a timestamp like 20250909_213045.

`for file in *.txt; do` → loops through all .txt files.

`[ -e "$file" ] || { ... }` → handles the case where no .txt files exist.

`${filename%.txt}` → removes .txt from the filename.

`cp "$file" "backup/...$timestamp.txt"` → copies file with timestamp added.

## Output:
![alttext](<./Screenshot 2025-09-10 at 11.49.26 AM.png>)

## Extra Questions
### What is the difference between cp, mv, and rsync?
### 📂 1. `cp – Copy`

Copies files or directories from one location to another.

The original remains.

Example:
```bash
cp file.txt backup/

```
👉 Copies file.txt into backup/, keeping the original in place.

Options:
```bash
-r → copy directories recursively.

-v → verbose (shows what’s copied).

-u → only copy if source is newer.
```
### 📂 2. `mv – Move (or rename)`

Moves a file/directory to another location.

The original is removed from the old location.

Can also rename files.

Examples:
```bash
mv file.txt backup/
```

👉 Moves file.txt into backup/ (removes it from the current folder).
```bash
mv file.txt newname.txt

```
👉 Renames file.txt → newname.txt.

### 📂 3. `rsync – Sync (copy/move + smart features)`

More advanced tool for copying/moving.

Synchronizes files and directories.

Only copies changes (much faster for large backups).

Can work locally or over network (SSH).

**Example:**
```bash
rsync -av file.txt backup/
```
👉 Copies file.txt into backup/ with permissions preserved.
```bash
rsync -av source/ backup/
```

👉 Makes backup/ an exact copy of source/ (new/changed files copied, old untouched).

**Options:**

-`a` → archive (preserve permissions, timestamps, symlinks).

-`v` → verbose.

-`delete` → remove files from destination if they don’t exist in source.

-`z` → compress data during transfer (useful over network).
