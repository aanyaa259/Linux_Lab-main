# 1. File Manipulation Commands
```bash
touch – Create or Update File Timestamps
```

# Create an empty file
```bash
touch file1.txt
```

# Update timestamp of an existing file
```bash
touch existing.txt
```

# Create multiple files at once
```bash 
touch file2.txt file3.txt
```
## cp – Copy Files and Directories

# Copy a file
```bash
cp source.txt destination.txt
```

# Copy to another directory
```bash
cp source.txt /path/to/destination/
```

# Copy directory recursively
```bash
cp -r dir1 dir2
```

# Preserve file attributes (timestamps, permissions)
```bash
cp -p source.txt backup.txt
mv – Move or Rename Files
```

# Rename a file
```bash
mv oldname.txt newname.txt
```

# Move file to another directory
```bash
mv file.txt /path/to/destination/
```

# Move and overwrite without prompt
```bash
mv -f file.txt /destination/
rm – Remove Files and Directories
```

# Remove a file
```bash
rm file.txt
```

# Remove multiple files
```bash 
rm file1.txt file2.txt
```

# Remove a directory recursively
```bash
rm -r foldername/
```

# Force remove without prompt
```bash
rm -rf foldername/
```

## cat – View or Concatenate Files

# Display file contents
```bash
cat file.txt
```

# Combine multiple files into one
```bash
cat file1.txt file2.txt > combined.txt
```

# Display file with line numbers
```bash
cat -n file.txt
```
## less – View File One Page at a Time
```bash
less file.txt
```
# Navigation inside less:
# Space → next page
# b → previous page
# q → quit
head – Show First Lines of a File

# First 10 lines (default)
```bash
head file.txt
```

# First 20 lines
```bash
head -n 20 file.txt
```
tail – Show Last Lines of a File

# Last 10 lines (default)
```bash
tail file.txt
```

# Last 15 lines
```bash
tail -n 15 file.txt
```

# Monitor file changes in real-time
```bash
tail -f logfile.txt
```
## 2. File Permissions and Ownership
```bash
ls -l – View Detailed File Info
```

ls -l
```bash
# Example output:
# -rw-r--r-- 1 user group 1024 Aug 14 10:00 file.txt
# Breakdown:
# [1] -rw-r--r-- → Permissions
# [2] 1 → Hard link count
# [3] user → Owner
# [4] group → Group owner
# [5] 1024 → File size (bytes)
# [6] Aug 14 10:00 → Last modified date/time
# [7] file.txt → File name
```
---
# File Permission Structure

- Owner (u) – File creator
- Group (g) – Users in same group
- Others (o) – Everyone else Permissions: r (read), w (write), x (execute)
---
## chmod – Change File Permissions


# Symbolic method
```bash
chmod u+x file.sh   # Add execute for owner
chmod g-w file.txt  # Remove write for group
chmod o+r file.txt  # Add read for others
```

# Numeric method (r=4, w=2, x=1)
```bash
chmod 755 file.sh   # rwxr-xr-x
chmod 644 file.txt  # rw-r--r--
chown – Change File Owner
```

# Change owner
```bash
sudo chown newuser file.txt
```

# Change owner and group
```bash
sudo chown newuser:newgroup file.txt
```
chgrp – Change Group
```bash
sudo chgrp developers file.txt
```
3. Advanced File and Directory Operations

find – Search for Files

# Find by name
```bash
find /path -name "file.txt"
```

# Find by extension
```bash
find /path -name "*.log"
```

# Find by size (>100MB)
```bash
find /path -size +100M
```

# Find and delete
find /path -name "*.tmp" -delete
grep – Search Text in Files

# Search a pattern
```bash
grep "error" logfile.txt
```

# Case-insensitive search
```bash
grep -i "error" logfile.txt
```
# Recursive search in directory
```bash
grep -r "TODO" /project/
```

# Show line numbers
```bash
grep -n "warning" logfile.txt
```
## tar – Archive Files

# Create archive
```bash 
tar -cvf archive.tar file1 file2 dir/
```
# Extract archive
```bash
tar -xvf archive.tar
```

# View archive contents
```bash
tar -tvf archive.tar
```
## gzip / gunzip – Compress & Decompress

# Compress
```bash
gzip file.txt  # Creates file.txt.gz
```

# Decompress
```bash
gunzip file.txt.gz
```
## ln – Create Links

# Hard link
```bash
ln original.txt hardlink.txt
```

# Symbolic (soft) link
```bash
ln -s /path/to/original symlinkname
```
