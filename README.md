# Linux Useful Commands

## `df` check disk free & usage

With human readable and file system type

```bash
df -hT
```

Options:

- `-h` human readable
- `-T` file system type

## `du` check disk usage in total

Check disk usage in total of `current` directory

```bash
du -sh
```

Check disk usage in total of `/var` directory with max depth 1

```bash
du -h --max-depth=1 /var
```

Options:

- `-h` human readable
-

## `ls` list all files in directory

Include hidden files with long list format

```bash
ls -lah
```

Sort by size desending

```bash
ls -larSh
```

Sort by time modified desending

```bash
ls -lth --time-style=+"%Y-%m-%d %H:%M:%S"
```

Sort by time modified desending with first 10 rows

```bash
ls -lt --time-style=+"%Y-%m-%d %H:%M:%S" | head -n 10
```

Options:

- `-l` long list format
- `-a` all include hidden files
- `-t` sort by time modified
- `-h` human readable
- `-r` reverse order alphabetically
- `-S` sort by size

## `find` find files in directory

Find file with name `*.png` with ignore case

```bash
find . -iname "hello.png"
```

Filter only files for list or count

```bash
find . -type f
```

```bash
find . -type f | wc -l
```

Filter only files with name `*.jpeg` for list or count

```bash
find . -type f -name '*.jpeg'
```

```bash
find . -type f -name '*.jpeg' | wc -l
```

Filter only files with size greater than 10M for list or count

```bash
find . -size +10M
```

```bash
find . -size +10M | wc -l
```

Options:

- `-type f` find only files
- `-type d` find only directories
- `-exec` execute command
- `-size` find file size
- `-name` find file name
- `-iname` find file name ignore case
- `-newermt` find file modified time
- `wc -l` word count by lines

## Other commands

```bash
#  GPT partition table:
gdisk -l /dev/vda

# Managing disk partitions
fdisk -l /dev/vda

# Show folder structure exclude .git|.idea|.vscode with directories first
tree -a -I '.git|.idea|.vscode' --dirsfirst
```
