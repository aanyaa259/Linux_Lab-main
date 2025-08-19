## Shell Tutorial- File Permissions with chmod and chown
---
# 1. Understanding File Permissions in Linux
Each file/directory in Linux has:
- Owner → The user who created the file.
- Group → A group of users who may share access.
- Others → Everyone else.
**Permission Types**
- r → Read (4 in numeric)
- w → Write (2 in numeric)
- x → Execute (1 in numeric)
**Permission Layout**
Example from ls -l:
```bash
-rwxr-xr--
```
Breakdown:

* → Regular file (d = directory, l = symlink, etc.)
* rwx → Owner has read, write, execute
* r-x → Group has read, execute
* r-- → Others have read only
---
# 2.chmod- Change File Permissions
*Syntax*
```bash
chmod [options] mode filename
```
---
**(A) Numeric (Octal) Method**
Each permission is represented as a number:

Read = 4
Write = 2
Execute = 1

Add them up:
7 = rwx
6 = rw-
5 = r-x
4 = r--
0 = ---
*Example:*
![alttext](<./Screenshot 2025-08-19 at 1.19.43 PM.png>)
Meaning:

Owner: 7 → rwx
Group: 5 → r-x
Others: 5 → r-x

**(B)Symbolic Method**

Use `u` (user/owner), `g` (group), `o` (others), `a` (all). 
Operators:
- +→ Add permission
- -→ Remove permission
- =→ Assign exact permission
Example:
![alttext](<./Screenshot 2025-08-19 at 1.24.16 PM.png>)

## 3. `chown`-Change File Ownership 
```bash
chown [options] new_owner:new_group filename
```
*Examples:*
![alttext](<./Screenshot 2025-08-19 at 1.43.35 PM.png>)

![alttext](<./Screenshot 2025-08-19 at 1.52.04 PM.png>)

## 4. Putting It All Together
Example:
```bash
touch av.txt
ls -l
```
*Output:*
```bash
-rw-rw-r-- 1 aanya aanya 0 Aug 19 13:39 av.txt
```

## 5. Quick Reference Tab

|Numeric	Permission	Meaning
|0	---	No access
|1	--x	Execute only
|2	-w-	Write only
|3	-wx	Write + Exec
|4	r--	Read only
|5	r-x	Read + Exec
|6	rw-	Read + Write
|7	rwx	Full access


